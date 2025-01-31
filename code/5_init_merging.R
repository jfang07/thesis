# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Set random seed for reproducibility
set.seed(1)

# Load packages
pacman::p_load(readxl, readstata13, tidyverse, matrixStats, DescTools, zoo, 
               haven, Hmisc, cNORM, mark)

# Load data 
long_fam_merged_dropped <- read_dta("data/psid/family.dta")
long_indiv_dropped <- read_dta("data/psid/indiv.dta")

# Subset for just household heads
heads <- subset(long_indiv_dropped, relat_to_head %in% c(1,10))
#View(heads)

# Merging ###############################

# Check column names
names(heads)
names(long_fam_merged_dropped)

# Merge data for heads
merged_heads <- merge(x=heads, y=long_fam_merged_dropped, by= c("int_num","year"))
#View(merged_heads)

# Check what didn't merge
not_merged_heads <- anti_join(x=heads, y=long_fam_merged_dropped, by= c("int_num","year")) 
dim(not_merged_heads) # all clear!

# Load state controls
ctrls <- read_dta("data/state_controls.dta")
#View(ctrls)

# Merge state controls 
merged_hds_ctrls <- left_join(x=merged_heads, y=ctrls, by= c("state","year"))
dim(merged_hds_ctrls)
#View(merged_hds_ctrls)

# Check what didn't merge
unmerged_hds_ctrls <- anti_join(x=merged_heads, y=ctrls, by= c("state","year"))
dim(unmerged_hds_ctrls) # many unmerged observations 
#View(unmerged_hds_ctrls) # This makes sense some observations are in territories, not states


# Adjust for inflation
# Interpolate missing adj_wages values
# calculate avg wages in working years and drop if missing
adj_merged_hds <- merged_hds_ctrls %>%
  mutate(pce = na.approx(pce, na.rm = F)) %>% 
  mutate(adj_wages = wages/pce*100, adj_ben4 = ben4/pce*100, adj_eitc3 = eitc3/pce*100) %>%  
  group_by(id) %>% 
  mutate(adj_wages = na.approx(adj_wages, na.rm = F),
         count_wages = count(!is.na(adj_wages)[age %in% 25:30]),
        avg_adj_wages = mean(na.omit(adj_wages[age %in% 25:30])),
        avg_adj_wages = ifelse(is.nan(avg_adj_wages), NA, avg_adj_wages)) %>% 
  ungroup()

# Add reform dates and drop territories
merged_dts_ctrls <- adj_merged_hds %>% 
  mutate(reform_date = case_when(
    state == 1 ~ "11/15/1996", # Alabama
    state == 2 ~ "07/01/1997", # Alaska 
    state == 4 ~ "11/01/1995",  # Arizona
    state == 5 ~ "07/01/1994",  # Arkansas
    state == 6 ~ "12/01/1992",  # California
    state == 8 ~ "07/01/1997",  # Colorado
    state == 9 ~ "01/01/1996",  # Connecticut
    state == 10 ~ "10/01/1995",  # Delaware
    state == 11 ~ "03/01/1997",  # District of Columbia
    state == 12 ~ "10/01/1996",  # Florida
    state == 13 ~ "01/01/1994",  # Georgia
    state == 15 ~ "02/01/1997",  # Hawaii
    state == 16 ~ "07/01/1997",  # Idaho
    state == 17 ~ "11/23/1993",  # Illinois
    state == 18 ~ "05/01/1995",  # Indiana
    state == 19 ~ "10/01/1993",  # Iowa
    state == 20 ~ "10/01/1996",  # Kansas
    state == 21 ~ "10/18/1996",  # Kentucky
    state == 22 ~ "01/01/1997",  # Louisiana
    state == 23 ~ "11/01/1996",  # Maine
    state == 24 ~ "03/01/1996",  # Maryland
    state == 25 ~ "11/01/1995",  # Massachusetts
    state == 26 ~ "10/01/1992",  # Michigan
    state == 27 ~ "07/01/1997",  # Minnesota
    state == 28 ~ "10/01/1995",  # Mississippi
    state == 29 ~ "06/01/1995",  # Missouri
    state == 30 ~ "02/01/1997",  # Montana
    state == 31 ~ "10/01/1995",  # Nebraska
    state == 32 ~ "12/03/1996",  # Nevada
    state == 33 ~ "10/01/1996",  # New Hampshire
    state == 34 ~ "10/01/1992",  # New Jersey
    state == 35 ~ "07/01/1997",  # New Mexico
    state == 36 ~ "12/02/1996",  # New York
    state == 37 ~ "07/01/1997",  # North Dakota
    state == 38 ~ "07/01/1996",  # North Carolina
    state == 39 ~ "07/01/1996",  # Ohio
    state == 40 ~ "10/01/1996",  # Oklahoma
    state == 41 ~ "02/01/1993",  # Oregon
    state == 42 ~ "03/03/1997",  # Pennsylvania
    state == 44 ~ "05/01/1997",  # Rhode Island
    state == 45 ~ "10/12/1996",  # South Carolina
    state == 46 ~ "06/01/1994",  # South Dakota
    state == 47 ~ "09/01/1996",  # Tennessee
    state == 48 ~ "06/01/1996",  # Texas
    state == 49 ~ "01/01/1993",  # Utah
    state == 50 ~ "07/01/1994",  # Vermont
    state == 51 ~ "07/01/1995",  # Virginia
    state == 53 ~ "01/01/1996",  # Washington
    state == 54 ~ "02/01/1996",  # West Virginia
    state == 55 ~ "01/01/1996",  # Wisconsin
    state == 56 ~ "01/01/1997")  # Wyoming
  ) %>%
  mutate(reform_date = as.Date(reform_date, format = "%m/%d/%Y")) %>% 
  filter(!is.na(reform_date))

# # Export data
write_dta(merged_dts_ctrls, path = "data/merged_dts_ctrls.dta")
write_dta(adj_merged_hds, path = "data/adj_merged_hds.dta")
