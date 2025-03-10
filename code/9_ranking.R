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

# Rank PISD wages based on CPS ASEC wage distributions
ranked <- unranked %>%
  group_by(cohort, year) %>%
  rowwise() %>%
  mutate(rank_indiv = ifelse(!is.na(adj_indiv_wages) & any(annual_distributions$cohort == cohort &
                                   annual_distributions$year == year), max(which(
      adj_indiv_wages >= annual_distributions$wage_quantiles
      [which(annual_distributions$cohort == cohort &
               annual_distributions$year == year)])) -1, NA)) %>%
  ungroup()

# Average ranks 25-30
ranked <- ranked %>%
  group_by(id) %>%
  mutate(avg_rank_indiv = mean(na.omit(rank_indiv[age %in% 25:30]))) %>%
  ungroup()

# Restrict to only mothers
data <- ranked %>%
  filter(hd_exp == 2 & mod_mar_hd_exp == 0 & avg_educ_mom < 12)

# Restrict to fathers for robustness check
test_data <- ranked %>%
  filter(hd_exp == 1 & mod_mar_hd_exp == 1 & avg_educ_mom >= 12)

# Export ranked data sets
write_dta(ranked, path = "data/ranked.dta")
write_dta(data, path = "data/data.dta")
write_dta(test_data, path = "data/test_data.dta")


# We are done with data manipulation! We will go to Stata for data cleaning and analysis.
