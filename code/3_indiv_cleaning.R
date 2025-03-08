# Title: Individual-level data cleaning
# Author: Jade Fang
# Last Modified: 1/20/2025

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Set random seed for reproducibility
set.seed(1)

# Install pacman package manager if needed
# install.packages("pacman")

# Load packages
pacman::p_load(readxl, tidyverse, matrixStats, zoo, 
               haven, Hmisc, cNORM, mark)

# INDIVIDUAL#############################################################

# Load data
individual <- read_dta("data/psid/individual_raw.dta")

# Data exploration------------------

# Check dimensions
dim(individual)

# Data wrangling -----------------------

# Create vectors of new variable names for individual
new_indiv_names <- c('release_num68', 'int_num68', 'person_num', 'sex', 'samp_or_not',
                     'person_num_mom', 'relat_to_head68', 'age68', 'wtr_moved_inout68',
                     'educ68', 'weight68', 'int_num69', 'seq_num69', 'relat_to_head69',
                     'age69', 'wtr_moved_inout69', 'weight69', 'int_num70', 'seq_num70',
                     'relat_to_head70', 'age70', 'wtr_moved_inout70', 'educ70', 'weight70',
                     'int_num71', 'seq_num71', 'relat_to_head71', 'age71', 
                     'wtr_moved_inout71', 'educ71', 'weight71', 'int_num72', 
                     'seq_num72', 'relat_to_head72', 'age72', 'wtr_moved_inout72', 
                     'educ72', 'weight72', 'int_num73', 'seq_num73', 'relat_to_head73', 
                     'age73', 'wtr_moved_inout73', 'educ73', 'weight73', 'int_num74', 
                     'seq_num74', 'relat_to_head74', 'age74', 'wtr_moved_inout74', 
                     'educ74', 'weight74', 'int_num75', 'seq_num75', 'relat_to_head75', 
                     'age75', 'wtr_moved_inout75', 'educ75', 'weight75', 'int_num76', 
                     'seq_num76', 'relat_to_head76', 'age76', 'wtr_moved_inout76', 
                     'educ76', 'weight76', 'int_num77', 'seq_num77', 'relat_to_head77', 
                     'age77', 'wtr_moved_inout77', 'educ77', 'weight77', 'int_num78', 
                     'seq_num78', 'relat_to_head78', 'age78', 'wtr_moved_inout78', 
                     'educ78', 'weight78', 'int_num79', 'seq_num79', 'relat_to_head79', 
                     'age79', 'wtr_moved_inout79', 'educ79', 'weight79', 'int_num80', 
                     'seq_num80', 'relat_to_head80', 'age80', 'wtr_moved_inout80', 
                     'educ80', 'weight80', 'int_num81', 'seq_num81', 'relat_to_head81',
                     'age81', 'wtr_moved_inout81', 'educ81', 'weight81', 'int_num82', 
                     'seq_num82', 'relat_to_head82', 'age82', 'wtr_moved_inout82', 
                     'educ82', 'weight82', 'int_num83', 'seq_num83', 'relat_to_head83', 
                     'age83', 'wtr_moved_inout83', 'educ83', 'weight83', 'int_num84', 
                     'seq_num84', 'relat_to_head84', 'age84', 'wtr_moved_inout84', 
                     'educ84', 'weight84', 'int_num85', 'seq_num85', 'relat_to_head85',
                     'age85', 'wtr_moved_inout85', 'educ85', 'weight85', 'int_num86', 
                     'seq_num86', 'relat_to_head86', 'age86', 'wtr_moved_inout86', 
                     'educ86', 'weight86', 'int_num87', 'seq_num87', 'relat_to_head87', 
                     'age87', 'wtr_moved_inout87', 'educ87', 'weight87', 'int_num88', 
                     'seq_num88', 'relat_to_head88', 'age88', 'wtr_moved_inout88', 
                     'educ88', 'weight88', 'int_num89', 'seq_num89', 'relat_to_head89',
                     'age89', 'wtr_moved_inout89', 'educ89', 'weight89', 'int_num90', 
                     'seq_num90', 'relat_to_head90', 'age90', 'wtr_moved_inout90', 
                     'educ90', 'weight90', 'int_num91', 'seq_num91', 'relat_to_head91',
                     'age91', 'wtr_moved_inout91', 'educ91', 'weight91', 'int_num92', 
                     'seq_num92', 'relat_to_head92', 'age92', 'wtr_moved_inout92',
                     'educ92', 'weight92', 'int_num93', 'seq_num93', 'relat_to_head93',
                     'age93', 'wtr_moved_inout93', 'educ93', 'weight93', 'int_num94',
                     'seq_num94', 'relat_to_head94', 'age94', 'wtr_moved_inout94', 
                     'educ94', 'weight94', 'int_num95', 'seq_num95', 'relat_to_head95',
                     'age95', 'wtr_moved_inout95', 'educ95', 'weight95', 'int_num96',
                     'seq_num96', 'relat_to_head96', 'age96', 'wtr_moved_inout96',
                     'educ96', 'weight96', 'int_num97', 'seq_num97', 'relat_to_head97', 
                     'age97', 'wtr_moved_inout97', 'educ97', 'weight97', 'int_num99',
                     'seq_num99', 'relat_to_head99', 'age99', 'wtr_moved_inout99', 
                     'educ99', 'weight99', 'int_num01', 'seq_num01', 'relat_to_head01', 
                     'age01', 'wtr_moved_inout01', 'educ01', 'weight01', 'int_num03', 
                     'seq_num03', 'relat_to_head03', 'age03', 'wtr_moved_inout03', 
                     'educ03', 'weight03', 'int_num05', 'seq_num05', 'relat_to_head05',
                     'age05', 'wtr_moved_inout05', 'educ05', 'weight05', 'int_num07', 
                     'seq_num07', 'relat_to_head07', 'age07', 'wtr_moved_inout07', 
                     'educ07', 'weight07', 'int_num09', 'seq_num09', 'relat_to_head09',
                     'age09', 'wtr_moved_inout09', 'educ09', 'weight09', 'int_num11', 
                     'seq_num11', 'relat_to_head11', 'age11', 'wtr_moved_inout11', 
                     'educ11', 'weight11', 'int_num13', 'seq_num13', 'relat_to_head13',
                     'age13', 'wtr_moved_inout13', 'educ13', 'weight13', 'int_num15',
                     'seq_num15', 'relat_to_head15', 'age15', 'wtr_moved_inout15', 
                     'educ15', 'weight15', 'int_num17', 'seq_num17', 'relat_to_head17',
                     'age17', 'wtr_moved_inout17', 'educ17', 'weight17', 'int_num19', 
                     'seq_num19', 'relat_to_head19', 'age19', 'wtr_moved_inout19', 'educ19',
                     'weight19', 'int_num21', 'seq_num21', 'relat_to_head21', 'age21',
                     'wtr_moved_inout21', 'educ21', 'weight21')

# Rename variables for individual
names(individual) <- new_indiv_names

# Create unique id for individuals and their moms
individual <- individual %>%
  mutate(id = int_num68*1000 + person_num)

# Load parental identification, marriage, and employment data
pid_mar_emp <- read_dta("data/psid/pid_mar_emp_raw.dta")

# We want to generate new variable names.

# Generate years
years0 <- c(as.character(69:78))
years1 <- c(as.character(79:97))
years2 <- c(as.character(99), as.character(seq(from = 1, to = 21, by = 2)))

# Generate stubs
stub0 <- rep(c("int_num","seq_num", "relat_to_head", "mar"),  times= length(years0)) 
stub <- rep(c("int_num","seq_num", "relat_to_head", "mar", "emp"),  times= length(years1) + length(years2)) 

# Add back zeroes to singular digits
singular <- grep("(^[1-9]{1}$)", years2)
years2[singular] <-  paste("0", years2[singular], sep="")

# Combine years
years <- c(years1, years2)

# Duplicate years
years0_dup <-  rep(years0,  each = 4)
years_dup <-  rep(years,  each = 5)

# Create new variable names
new_names0 <- paste(stub0, years0_dup, sep = "")
new_names <- paste(stub, years_dup, sep = "")
new_pid_mar_emp_names <- c("release", "int_num68", "person_num", "sex","samp_or_not",
                           "person_num_mom", "person_num_dad", 
                           "relat_to_head68", "mar68", new_names0, new_names)

# Check lengths
length(new_pid_mar_emp_names)
length(names(pid_mar_emp)) # all clear!

# Update variable names
names(pid_mar_emp) <- new_pid_mar_emp_names

# Designate missing values as NA
pid_mar_emp$int_num68 <- ifelse(pid_mar_emp$int_num68  == 0, NA, pid_mar_emp$int_num68 )
pid_mar_emp$person_num_mom <- ifelse(pid_mar_emp$person_num_mom %in% c(0,999),
                                     NA, pid_mar_emp$person_num_mom)
pid_mar_emp$person_num_dad <- ifelse(pid_mar_emp$person_num_dad  %in% c(0,999),
                                     NA, pid_mar_emp$person_num_dad)
#View(pid_mar_emp)

# Create unique ID's and drop unnecessary variables
pid_mar_emp_dropped <- pid_mar_emp %>% 
  mutate(id = int_num68*1000 + person_num, 
         id_mom = int_num68*1000 + person_num_mom,
         id_dad = int_num68*1000 + person_num_dad) %>% 
  select(starts_with(c("id", "mar", "emp")))
#View(pid_mar_emp_dropped)

# Merge
indiv_pid_mar_emp <- merge(individual, pid_mar_emp_dropped, by = "id")
names(indiv_pid_mar_emp)
#View(indiv_pid_mar_emp)

# Load individual wage data
indiv_wages <- read_dta("data/psid/indiv_wages_raw.dta")

# We want to generate new variable names.

# Generate years
years1_indiv_wages <- c(as.character(91:93))
years2_indiv_wages <- c(as.character(seq(from = 5, to = 21, by = 2)))

# Generate stubs
stub_indiv_wages <- rep(c("int_num","seq_num", "relat_to_head", "indiv_wages"),  
                        times= length(years1_indiv_wages) + length(years2_indiv_wages)) 

# Add back zeroes to singular digits
singular_indiv_wages <- grep("(^[1-9]{1}$)", years2_indiv_wages)
years2_indiv_wages[singular_indiv_wages] <-  paste("0", years2_indiv_wages[singular_indiv_wages], sep="")

# Combine years
years_indiv_wages <- c(years1_indiv_wages, years2_indiv_wages)

# Duplicate years
years_indiv_wages_dup <-  rep(years_indiv_wages,  each = 4)

# Create new variable names
new_indiv_wages_stub_names <- paste(stub_indiv_wages, years_indiv_wages_dup, sep = "")
new_indiv_wages_names <- c("release", "int_num68", "person_num","sex", "samp_or_not", new_indiv_wages_stub_names)

# Check lengths
length(new_indiv_wages_names)
length(names(indiv_wages)) # all clear!

# Update variable names
names(indiv_wages) <- new_indiv_wages_names

# Designate missing values as NA
indiv_wages$int_num68 <- ifelse(indiv_wages$int_num68  == 0, NA, indiv_wages$int_num68 )
#View(indiv_wages)

# Create unique ID's and drop unnecessary variables
indiv_wages_dropped <- indiv_wages %>% 
  mutate(id = int_num68*1000 + person_num) %>% 
  select(starts_with(c("id", "indiv_wages")))
#View(indiv_wages_dropped)

# Merge
indiv_merged <- left_join(indiv_pid_mar_emp, indiv_wages_dropped, by = "id")
names(indiv_merged)
#View(indiv_merged)


# Pivot longer for individual
long_indiv <- indiv_merged %>%
  pivot_longer(cols = starts_with(c("int_num", "relat_to_head", "age", 
                                    "wtr_moved_inout", "weight", "educ", 
                                    "seq_num", "emp", "mar", "indiv")),
               names_to = c("variable", "year"),
               names_pattern = "([a-z_]+)(\\d{2})",
               values_to = "value") %>% 
  group_by(year, id) %>% 
  pivot_wider(names_from = "variable", values_from = "value") %>% 
  select(-starts_with(c("release", "person"))) %>% 
  ungroup()
names(long_indiv)

# Get summary stats
summary(long_indiv)

# View data
#View(long_indiv)

# Convert year to numeric
long_indiv$year <- as.numeric(long_indiv$year)

# Make year variable have four digits
long_indiv$year <- case_when(
  long_indiv$year < 60 ~ long_indiv$year + 2000, 
  long_indiv$year >= 60 & long_indiv$year < 100 ~ long_indiv$year + 1900)

# Indicate missing values with NA
long_indiv$sex <- ifelse(long_indiv$sex == 9, NA, long_indiv$sex)
long_indiv$relat_to_head <- ifelse(long_indiv$relat_to_head == 9 |
                                     long_indiv$relat_to_head == 0, NA, 
                                   long_indiv$relat_to_head)
long_indiv$age <- ifelse(long_indiv$age == 999 | long_indiv$age == 0, NA, 
                         long_indiv$age)

long_indiv$educ <- ifelse(long_indiv$educ == 99 | long_indiv$educ == 98 | 
                            long_indiv$educ == 0, NA, long_indiv$educ)
long_indiv$int_num <- ifelse(long_indiv$int_num == 0, NA, long_indiv$int_num)
long_indiv$relat_to_head <- ifelse(long_indiv$relat_to_head ==  0, NA, long_indiv$relat_to_head)
long_indiv$emp <- ifelse(long_indiv$emp %in% c(0,8), NA, long_indiv$emp)
long_indiv2 <- long_indiv %>%
  mutate(indiv_wages = ifelse(indiv_wages > 999997, NA, indiv_wages)) %>% 
  group_by(id) %>% 
  mutate(indiv_wages = case_when(
    indiv_wages == 0 & id >= 3001000 &  id < 3512000 ~ NA, # 1997-1999 immigrant sample
    indiv_wages == 0 & id >= 4001000 &  id < 4852000 ~ NA, # 2017-2019 immigrant sample
    indiv_wages == 0 & id >= 7001000 &  id < 9309000 ~ NA, # Latino sample
    indiv_wages == 0 & int_num == 0 ~ NA, # nonresponse
    indiv_wages == 0 & seq_num >  50 & seq_num < 60 & wtr_moved_inout == 0 ~ NA, # institutionalized
    indiv_wages == 0 & wtr_moved_inout %in% c(5,6,7,8) ~ NA, # mover-out nonresponse
    TRUE ~ indiv_wages)) %>% 
  ungroup() 
#View(long_indiv2)


# Check missing values
for (var in names(long_indiv2)){
  print(var)
  print(sum(is.na(long_indiv2[[var]])))
}

# Fill in missing values 
long_indiv_filled <- long_indiv2 %>% 
  group_by(id) %>% 
  mutate(educ = na.approx(educ, na.rm = F),
         age = na.approx(age, na.rm = F)) %>% 
  fill(educ, .direction = "downup") %>% 
  ungroup()
#View(long_indiv_filled)


# Check missing values
for (var in names(long_indiv_filled)){
  print(var)
  print(sum(is.na(long_indiv_filled[[var]])))
}

# Drop observations without interview numbers and add labor force participation indicator
long_indiv_dropped <- long_indiv_filled %>% 
  filter(!is.na(int_num))  %>% 
  mutate(lfp = case_when(
    emp %in% 1:3 ~ 1,
    emp %in% 4:7 ~ 0,
    TRUE ~ NA_real_))

#View(long_indiv_dropped)

# Check for weird values
summary(long_indiv_dropped)

# Export data
write_dta(long_indiv_dropped, path = "data/indiv.dta")
