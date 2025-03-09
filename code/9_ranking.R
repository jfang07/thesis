# Get working directory
getwd() # we are in the Documents folder

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Set random seed for reproducibility
set.seed(1)

# Load packages
pacman::p_load(readxl, readstata13, tidyverse, matrixStats, zoo,
               haven, Hmisc, cNORM, mark)

# Load data
wage_distrib <- read_dta("data/wage_distrib.dta")
unranked <- read_dta("data/unranked.dta")

# Generate percentiles per year
annual_distributions <- wage_distrib %>%
  group_by(cohort,year) %>%
  summarise(
    wage_quantiles = list(wtd.quantile(adj_wages, weights = asecwt, probs = seq(0, 1, by = 0.01)))
  ) %>%
  ungroup() %>%
  unnest(wage_quantiles) %>%
  ungroup()
View(annual_distributions)

# Rank PISD wages based on CPS ASEC wage distributions
suppressWarnings(
ranked <- unranked %>%
  group_by(cohort, year) %>%
  rowwise() %>%
  mutate(rank_indiv = ifelse(any(annual_distributions$cohort == cohort &
                                   annual_distributions$year == year), max(which(
      avg_adj_indiv_wages >= annual_distributions$wage_quantiles
      [which(annual_distributions$cohort == cohort & 
               annual_distributions$year == year)])) -1, NA)) %>%
  ungroup() %>%
  group_by(cohort_hd_exp) %>%
  rowwise() %>%
  mutate(rank_hd_exp = ifelse(any(annual_distributions$cohort == cohort_hd_exp), max(which(
        avg_adj_wages_hd_exp >= annual_distributions$wage_quantiles
        [which(annual_distributions$cohort == cohort_hd_exp)])) -1, NA)) %>%
  ungroup()
)
View(ranked)

# Count missing values
sum(is.na(ranked$rank_indiv)) # all clear!
sum(is.na(ranked$rank_indiv2)) # all clear!
sum(is.na(ranked$rank_hd_exp)) # need to address
sum(is.na(ranked$rank_hd_exp2)) # need to address

# Inspect parental cohorts with missing ranks
ranked %>%
  filter(is.na(rank_hd_exp)) %>%
  select(cohort_hd_exp) %>%
  arrange() %>%
  unique() %>%
  View()

# Cross-check with available cohort years with parental cohorts with missing ranks
earliest <- annual_distributions %>%
  select(cohort) %>%
  arrange() %>%
  unique() %>%
  head(1) %>%
  pull()
# The earliest cohort year is 1922

# Impute using ranks based on the earliest available cohort
# Restrict to only mothers
suppressWarnings(
data <- ranked %>%
  group_by(cohort_hd_exp) %>%
  rowwise() %>%
  mutate(rank_hd_exp = ifelse(is.na(rank_hd_exp), max(which(
      avg_adj_wages_hd_exp >= annual_distributions$wage_quantiles
      [which(annual_distributions$cohort == earliest)])) -1, rank_hd_exp)) %>%
  ungroup()  %>%
  filter(hd_exp == 2 & mod_mar_hd_exp == 0 & rank_hd_exp < 50 & avg_educ_mom < 12)
)

# Count missing values again
sum(is.na(data$rank_indiv)) # all clear!
sum(is.na(data$rank_hd_exp)) # all clear!
summary(ranked$mod_mar_hd_exp)

# Check cohort counts
data %>%
  group_by(cohort) %>%
  summarise(cohort_count = n_distinct(id)) %>%
  View()
# Very few individuals in recent cohorts!

# Check observations by year
data %>%
  group_by(year) %>%
  summarise(nrow = n_distinct(id)) %>%
  View()


# Restrict to fathers for robustness check
suppressWarnings(
test_data <- ranked %>%
  group_by(cohort_hd_exp) %>%
  rowwise() %>%
  mutate(rank_hd_exp2 = ifelse(is.na(rank_hd_exp), min(which(
    avg_adj_wages_hd_exp <= annual_distributions$wage_quantiles
    [which(annual_distributions$cohort == earliest)])) -1, rank_hd_exp2),
    rank_hd_exp = ifelse(is.na(rank_hd_exp2), max(which(
      avg_adj_wages_hd_exp >= annual_distributions$wage_quantiles
      [which(annual_distributions$cohort == earliest)])) -1, rank_hd_exp)) %>%
  ungroup()  %>%
  filter(hd_exp == 1 & mod_mar_hd_exp == 1 & avg_educ_mom >= 12)
)

# Count missing values again
sum(is.na(test_data$rank_indiv)) # all clear!
sum(is.na(test_data$rank_hd_exp)) # all clear!

# Export ranked data sets
write_dta(data, path = "data/data.dta")
write_dta(test_data, path = "data/test_data.dta")


# We are done with data manipulation! We will go to Stata for data cleaning and analysis.

# Calculate the ten-year attrition rate
data <- read_dta("data/data.dta")
counts <- data %>%
  filter(cohort < 1987) %>%
  group_by(id) %>%
  mutate(count = n_distinct(year[year <= 1997]) + 2*n_distinct(year[year > 1997])) %>%
  select(id, count)
less_ten <- counts %>%
  filter(count < 10)
(nrow(less_ten))/nrow(counts)*100
#26.6 percent
