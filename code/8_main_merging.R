
# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Set random seed for reproducibility
set.seed(1)

# Load packages
pacman::p_load(readxl, tidyverse, matrixStats, zoo, DescTools,
               haven, Hmisc, cNORM, mark)

# Load  data
long_indiv_dropped <- read_dta("data/psid/indiv.dta")
merged_exp <- read_dta("data/merged_exp.dta")
adj_merged_hds <- read_dta("data/adj_merged_hds.dta")

# Merge with adult children, starting with moms
pairs_mom <- left_join(x = long_indiv_dropped, y = merged_exp, 
                     by = c("id",  "id_mom" = "id_hd_exp"))

# Keep only dads 
merged_exp_dads <- merged_exp %>% 
  filter(hd_exp == 1) %>% 
  rename(id_dad = id_hd_exp)

# Complete merge
pairs <- pairs_mom %>% 
  rows_update(merged_exp_dads, by =  c("id", "id_dad")) %>% 
  mutate(id_hd_exp = case_when(
    hd_exp == 1 ~ id_dad, 
    hd_exp == 2 ~ id_mom,
    TRUE ~ NA_real_))
# Check dimensions
dim(long_indiv_dropped)
dim(pairs)

#View(pairs)

# Check missing values
for (var in names(pairs)){
  print(var)
  print(sum(is.na(pairs[[var]])))
} 

# Subset heads from exposure 
hds_exp <- adj_merged_hds %>% 
  select(id, year, avg_adj_wages, cohort, avg_rank, count_wages) %>%
  rename_at(vars(-year), ~paste0(., "_hd_exp"))
#View(hd_exp)

# Subset heads and drop unnecessary variables
hds <- adj_merged_hds %>%
  select(-c(ben4, eitc3, relat_to_head, id_mom, id_dad, wages, indiv_wages, 
            index, release_num, count_wages)) %>% 
  rename_at(vars(-c(int_num, year)), ~paste0(., "_hd"))
names(hds)
#View(hds)

# Merge pairs with heads and add individual wage variables
# Impute missing wages with heads' if not participating in LF
merged <- merge(x=pairs, y=hds, by= c("int_num","year")) %>% 
  filter(weight > 0) %>% 
  mutate(adj_indiv_wages = ifelse(indiv_wages == 0 & relat_to_head %in% c(2,20),
                                  adj_wages_hd, 
                                  indiv_wages/pce_hd*100),
         adj_indiv_wages = ifelse(relat_to_head %in% c(1,10), adj_wages_hd, 
                                  adj_indiv_wages)) %>% 
  group_by(id) %>%
  mutate(adj_indiv_wages = na.approx(adj_indiv_wages, na.rm = F),
         count_wages = count(!is.na(adj_indiv_wages[age %in% 25:30])),
         avg_adj_indiv_wages = mean(na.omit(adj_indiv_wages[age %in% 25:30]))) %>% 
  select(-c(indiv_wages, pce_hd)) %>% 
  ungroup()
#View(merged)

# Merge with parents and drop unnecessary variables
merged_par <- merge(x = merged, y = hds_exp, by = c("id_hd_exp", "year" )) %>% 
  select(-starts_with(c("seq", "wtr", "id_")))
#View(merged_par)
names(merged_par)

# Check missing values
for (var in names(merged_par)){
  print(var)
  print(sum(is.na(merged_par[[var]]) + sum(is.nan(merged_par[[var]]))))
}

# Filter and drop to keep only desired data
names(merged_par)
merged_par_dropped <- merged_par %>% 
  mutate(cur_particip = ifelse(afdc_tanf_hd > 0, 1, 0),
         cohort = year - age) %>% 
  group_by(id) %>% 
  mutate(cohort = ifelse(length(Mode(cohort[age > 1], na.rm = T)) > 1,
                         min(Mode(cohort[age > 1], na.rm = T)),
                         Mode(cohort[age > 1], na.rm = T)),
         cohort = ifelse(is.na(cohort), min(year - age), cohort)) %>% 
  ungroup() %>% 
  filter(relat_to_head %in% c(1,10,2,20) 
         & age %in% 25:30)
dim(merged_par_dropped)

# Keep only observations with non-missing values for average long-term wages
unranked <- merged_par_dropped %>% 
  filter(!is.na(avg_adj_wages_hd_exp) & !is.na(avg_adj_indiv_wages))
dim(unranked)
View(unranked)

# Calculate percent dropped due to missing average long-term wages
(nrow(merged_par_dropped) - nrow(unranked))/nrow(merged_par_dropped)*100
(nrow(merged_par_dropped[merged_par_dropped$sex == 1,]) - 
    nrow(unranked[unranked$sex == 1,]))/nrow(merged_par_dropped[merged_par_dropped$sex == 1,])*100
(nrow(merged_par_dropped[merged_par_dropped$sex == 2,]) - 
    nrow(unranked[unranked$sex == 2,]))/nrow(merged_par_dropped[merged_par_dropped$sex == 2,])*100

# Export data
write_dta(unranked, "data/unranked.dta")
