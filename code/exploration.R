library(did)
library(tidyverse)
library(haven)

# Load data
data <- read_dta("data/cleaner_data.dta") 

# Reduce to most recent observation and change treatment column to cohort
collapsed <- data %>% 
  group_by(id) %>% 
  filter(year == max(year)) %>% 
  ungroup() %>% 
  group_by(mod_state_hd_exp) %>% 
  mutate(group = min(cohort[reform_exp == 1], na.rm = T)) %>% 
  ungroup()

# Run CSA estimator on rank
rel_mob <-  att_gt(yname = "avg_rank_indiv",
                   tname = "cohort",
                   panel = FALSE,
                   weightsname = "weight",
                   control_group = "notyettreated",
                   gname = "group",
                   data = collapsed)

summary(rel_mob)

#Check event study
es <- aggte(rel_mob, type = "dynamic", na.rm = T)
summary(es)
