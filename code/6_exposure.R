# Need to run outside of ARC environment due to incompatibilities with DescTools
# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Set random seed for reproducibility
set.seed(1)

#install.packages("pacman")

# Load packages
pacman::p_load(tidyverse, matrixStats, zoo, 
               haven, Hmisc, cNORM, mark, DescTools)

# Load data
long_indiv_dropped <- read_dta("data/psid/indiv.dta")
merged_dts_ctrls <- read_dta("data/merged_dts_ctrls.dta")
mom_educ <- long_indiv_dropped %>% 
  select(id, educ, year) 

# Subset for ages under 5
children_exposure <- long_indiv_dropped %>% 
  filter(age < 5 & weight > 0) %>% 
  select(c(age, id, id_mom, id_dad, int_num, year))
#View(children_exposure)

# Left join with mother's education
children_mom_educ <- left_join(children_exposure, mom_educ, 
                               by = c("id_mom" = "id", "year")) %>% 
  rename(educ_mom = educ)

# Merge with children in exposure period and determine modal household head
# Include only observations whose modal household head is a parent or self
# Also add reform indicators
exposure <- merge(x = children_mom_educ, y = merged_dts_ctrls, by = c("int_num","year")) %>% 
  select(c(id.x, id_mom.x, id_dad.x, id.y, year, age.x, educ_mom, educ, age.y, num_fam, state,
           afdc_tanf, mar, starts_with(c("adj", "avg", "reform")))) %>% 
  group_by(id.x) %>% 
  mutate(id_hd_exp = ifelse(length(Mode(id.y, na.rm = T)) > 1, sample(id.y, 1), 
                            Mode(id.y)), 
         hd_exp = case_when(
           id_hd_exp == id_dad.x ~ 1,
           id_hd_exp == id_mom.x ~ 2,
           id_hd_exp == id.x ~ 3,
           TRUE ~ NA_real_), 
         reform_exp = ifelse(any(year >= year(reform_date)), 1, 0))  %>% 
  ungroup() %>% 
  filter(!is.na(hd_exp)) %>% 
  mutate(cohort_hd_exp = year - age.y) %>% 
  group_by(id.x) %>% 
  mutate(cohort_hd_exp = ifelse(length(Mode(cohort_hd_exp, na.rm = T)) > 1, 
                                sample(cohort_hd_exp, 1), 
                                Mode(cohort_hd_exp)))
dim(exposure)
#View(exposure)

# Check missing values
for (var in names(exposure)){
  print(var)
  print(sum(is.na(exposure[[var]])))
} 

# Fill in missing values (at least try)
exposure_filled <- exposure %>% 
  group_by(id.x) %>% 
  mutate(age.y = na.approx(age.y, na.rm = F),
         educ_mom = na.approx(educ_mom, na.rm = F),
         educ = na.approx(educ, na.rm = F)) %>% 
  fill(c(educ_mom, educ, id_hd_exp,hd_exp, cohort_hd_exp), .direction = "downup") %>% 
  ungroup() %>% 
  group_by(state, year) %>% 
  fill(c(adj_ben4, adj_eitc3), .direction = "downup") %>% 
  ungroup()
#View(exposure_filled)

# Check missing values
for (var in names(exposure_filled)){
  print(var)
  print(sum(is.na(exposure_filled[[var]])))
} 

# Generate new variables during the exposure period
mut_exposure <- exposure_filled %>% 
  group_by(id.x) %>% 
  mutate(mod_state_hd_exp = ifelse(length(Mode(state, na.rm = T)) > 1, NA, Mode(state, na.rm = T)), 
         avg_age_hd_exp = mean(age.y, na.rm = T),
         avg_num_fam = mean(num_fam, na.rm = T),
         avg_educ_mom = mean(educ_mom, na.rm = T),
         avg_educ_hd_exp = mean(educ, na.rm = T),
         avg_adj_ben4_hd_exp = mean(adj_ben4, na.rm = T), 
         mod_mar_hd_exp = ifelse(length(Mode(mar, na.rm = T)) > 1, NA, Mode(mar, na.rm = T)),
         max_adj_ben4_hd_exp = ifelse(length(!is.na(adj_ben4)) == 0, NA, max(adj_ben4))) %>% 
  ungroup()
dim(mut_exposure)

# Check missing values
for (var in names(mut_exposure)){
  print(var)
  print(sum(is.na(mut_exposure[[var]])))
} 

# Fill in more missing values for modal state
# mut_exposure_filled <- mut_exposure %>% 
#   group_by(id.x) %>%
#   mutate(mod_state_hd_exp = ifelse(is.na(mod_state_hd_exp) & any(!is.na(afdc_tanf >= 0)), 
#                                    state[afdc_tanf == max(afdc_tanf)], 
#                                    mut_exposure$mod_state_hd_exp),
#          mod_state_hd_exp = ifelse(is.na(mod_state_hd_exp), sample(state, 1),
#                                    mut_exposure$mod_state_hd_exp))  %>% 
#   ungroup()


# Check missing values
for (var in names(mut_exposure_filled)){
  print(var)
  print(sum(is.na(mut_exposure_filled[[var]])))
} 


# Keep only relevant variables calculated from previous merging
merged_exp <- mut_exposure %>% 
  select(c(id.x,id_hd_exp, hd_exp, cohort_hd_exp, avg_adj_ben4_hd_exp, max_adj_ben4_hd_exp,
           mod_state_hd_exp, mod_mar_hd_exp, avg_age_hd_exp, avg_num_fam, avg_educ_mom, 
           avg_educ_hd_exp, reform_exp)) %>% 
  rename(id = id.x) %>% 
  unique()
#View(exposure_subset)



# Export data set
write_dta(merged_exp, path = "data/merged_exp.dta")
