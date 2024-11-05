# Title: Family-level data cleaning
# Author: Jade Fang
# Last Modified: 11/5/2024

# Set up ------------------------------------------------------------------

# Get working directory
getwd() # we are in the Documents folder

# Go to thesis folder if needed
setwd("./Thesis")

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Set random seed for reproducibility
set.seed(1)

# Load packages
pacman::p_load(readxl, readstata13, tidyverse, matrixStats, DescTools, zoo, 
               haven, Hmisc, cNORM, mark)

# FAMILY ##################################################################

# Load data
family <- read_excel("data/family/family.xlsx")
number <- read_excel("data/number/number.xlsx")

# Data exploration -------------------------------------------------------

# Check dimensions
dim(family)
dim(number)

# Get variables
names(family)
names(number)

# Data wrangling -------------------------------------------------------

# Create vectors of new variable names for family
new_fam_names <- c('release_num68', 'int_num68', 'hours68', 'state68', 'age68',
                   'race68', 'wages68', 'release_num69', 'int_num69', 'hours69',
                   'afdc_tanf69','state69', 'wages69','race69', 'age69',
                   'release_num70', 'int_num70', 'state70', 'hours70', 'wages70',
                   'afdc_tanf70', 'age70', 'race70', 'release_num71',
                   'int_num71', 'state71', 'hours71', 'wages71', 'afdc_tanf71', 
                   'age71', 'race71', 'release_num72', 'int_num72', 'state72', 
                   'hours72','wages72', 'afdc_tanf72', 'age72', 'race72', 
                   'release_num73', 'int_num73',  'state73', 'hours73',
                   'wages73', 'afdc_tanf73', 'age73', 'race73', 
                   'release_num74', 'int_num74',  'state74', 'hours74',
                   'wages74', 'afdc_tanf74', 'age74', 'race74', 'release_num75',
                   'int_num75', 'state75', 'hours75', 'wages75', 'afdc_tanf75', 
                   'age75', 'educ75', 'race75', 'release_num76',  'int_num76', 
                   'state76', 'hours76', 'wages76', 'afdc_tanf76', 'age76', 
                   'educ76', 'race76', 'release_num77', 'int_num77', 'state77', 
                   'hours77', 'wages77', 'afdc_tanf77', 'age77', 'educ77', 
                   'race77', 'release_num78', 'int_num78', 'state78', 'hours78', 
                   'wages78', 'afdc_tanf78', 'age78', 'educ78', 'race78', 
                   'release_num79', 'int_num79', 'state79', 'hours79', 'wages79', 
                   'afdc_tanf79', 'age79', 'educ79', 'race79', 'release_num80', 
                   'int_num80', 'state80', 'hours80', 'wages80', 'afdc_tanf80', 
                   'age80', 'educ80', 'race80', 'release_num81', 'int_num81', 
                   'state81', 'hours81', 'wages81', 'afdc_tanf81', 'age81', 
                   'educ81', 'race81', 'release_num82', 'int_num82', 'state82', 
                   'hours82', 'wages82', 'afdc_tanf82', 'age82', 'educ82', 
                   'race82', 'release_num83', 'int_num83', 'state83', 'hours83',
                   'wages83', 'afdc_tanf83', 'age83', 'educ83', 'race83', 
                   'release_num84', 'int_num84', 'state84', 'hours84', 'wages84',
                   'afdc_tanf84', 'age84', 'educ84', 'race84', 'wealth84',
                   'release_num85', 'int_num85', 'state85', 'hours85', 'wages85',
                   'afdc_tanf85', 'age85', 'hisp85', 'race85', 
                   'release_num86', 'int_num86', 'state86', 'hours86', 
                   'wages86', 'afdc_tanf86', 'age86', 'hisp86', 
                   'race86', 'release_num87', 'int_num87', 'state87', 'hours87', 
                   'wages87', 'afdc_tanf87', 'age87', 'hisp87', 
                   'race87', 'release_num88', 'int_num88', 'state88', 'hours88',
                   'wages88', 'afdc_tanf88', 'age88', 'hisp88', 
                   'race88', 'release_num89', 'int_num89', 'state89', 'hours89',
                   'wages89', 'afdc_tanf89', 'age89', 'hisp89', 
                   'race89', 'wealth89', 'release_num90', 'int_num90', 'state90', 
                   'hours90', 'wages90', 'afdc_tanf90', 'age90', 'hisp90', 
                   'race90', 'release_num91', 'int_num91', 'state91', 
                   'hours91', 'wages91', 'afdc_tanf91', 'age91', 'hisp91', 
                   'race91', 'educ91', 'release_num92', 'int_num92', 'state92',
                   'hours92', 'wages92', 'afdc_tanf92', 'age92', 'hisp92', 
                   'race92', 'educ92', 'release_num93', 'int_num93', 'state93',
                   'hours93', 'wages93', 'afdc_tanf93', 'age93', 'hisp93', 
                   'race93', 'educ93', 'release_num94', 'int_num94', 'age94',
                   'afdc_tanf94', 'hisp94', 'race94', 'hours94', 'wages94',
                   'state94','educ94', 'wealth94', 'release_num95', 'int_num95', 
                   'age95', 'afdc_tanf95', 'hisp95', 'race95', 'hours95', 
                   'wages95', 'state95', 'educ95', 'release_num96', 'int_num96', 
                   'age96', 'afdc_tanf96', 'hisp96', 'race96', 'hours96',
                   'wages96', 'state96', 'educ96', 'release_num97', 'int_num97',
                   'age97', 'afdc_tanf97', 'race97', 'hours97', 
                   'wages97', 'state97', 'educ97', 'release_num99', 'int_num99',
                   'state99','age99', 'afdc_tanf99', 'race99', 'hours99', 
                   'wages99',  'educ99', 'wealth99', 'release_num01',
                   'int_num01', 'state01', 'age01', 'afdc_tanf01', 'race01', 
                   'hours01', 'wages01', 'educ01', 'wealth01', 'release_num03',
                   'int_num03', 'state03', 'age03', 'afdc_tanf03', 'race03', 
                   'hours03', 'wages03', 'educ03', 'wealth03', 'release_num05',
                   'int_num05', 'state05', 'age05', 'hisp05', 'race05', 
                   'hours05', 'wages05', 'afdc_tanf05', 'educ05', 'wealth05', 
                   'release_num07', 'int_num07', 'state07', 'age07', 'hisp07', 
                   'race07', 'hours07', 'wages07', 'afdc_tanf07', 'educ07', 
                   'wealth07', 'release_num09', 'int_num09', 'state09', 'age09', 
                   'hisp09', 'race09', 'hours09', 'wages09', 'afdc_tanf09', 
                   'wealth09', 'educ09', 'release_num11', 'int_num11', 'state11',
                   'age11', 'hisp11', 'race11', 'hours11', 'wages11', 
                   'afdc_tanf11', 'wealth11', 'educ11', 'release_num13', 
                   'int_num13', 'state13', 'age13', 'hisp13', 'race13', 
                   'hours13', 'wages13', 'afdc_tanf13',  'wealth13', 'educ13',
                   'release_num15', 'int_num15', 'state15', 'age15', 'hisp15',
                   'race15', 'hours15', 'wages15', 'afdc_tanf15',  'wealth15', 'educ15',
                   'release_num17', 'int_num17', 'state17', 'age17', 'hisp17', 
                   'race17', 'hours17', 'wages17', 'afdc_tanf17', 'wealth17', 'educ17', 
                   'release_num19', 'int_num19', 'state19', 'age19', 
                   'hisp19', 'race19', 'hours19', 'wages19', 'afdc_tanf19', 'wealth19',
                   'educ19', 'release_num21', 'int_num21', 'state21',
                   'age21', 'hisp21', 'race21', 'hours21', 'wages21', 
                   'afdc_tanf21',  'wealth21','educ21')

# Rename variables 
names(family) <- new_fam_names

# Create array of variable names for number data set

# Generate years
years0 <- c(as.character(68:97))
years2 <- c(as.character(99), as.character(seq(from = 1, to = 21, by = 2)))

# Generate stubs
number_stub <- rep(c("release_num", "int_num", "num_fam"),  times= length(years0) + length(years2)) 

# Add back zeroes to singular digits
singular <- grep("(^[1-9]{1}$)", years2)
years2[singular] <-  paste("0", years2[singular], sep="")

# Combine years
years_num <- c(years0, years2)

# Duplicate years
years_num_dup <-  rep(years_num,  each = 3)

# Create new variable names for number data set
new_num_names <- paste(number_stub, years_num_dup, sep = "")
names(number) <- new_num_names

# Create unique id for family and number data sets
family <- rowid_to_column(family, "index")
number <- rowid_to_column(number, "index")

# Drop irrelevant/duplicated variables and pivot longer for family data set
long_fam <- family %>%
  select(-starts_with(c("release", "wealth", "age", "educ"))) %>% 
  pivot_longer(cols = -index, names_to = c("variable", "year"),
               names_pattern = "([a-z]+_?[a-z]*)(\\d{2})",
               values_to = "value") %>% 
  group_by(year, index) %>% 
  pivot_wider(names_from = "variable", values_from = "value") %>% 
  ungroup()

# Repeat for number data set
long_num <- number %>%
  pivot_longer(cols = -index, names_to = c("variable", "year"),
               names_pattern = "([a-z]+_?[a-z]*)(\\d{2})",
               values_to = "value") %>% 
  group_by(year, index) %>% 
  pivot_wider(names_from = "variable", values_from = "value") %>% 
  ungroup()

# View data if needed
#View(long_fam)
#View(long_num) 

# Check dimensions
dim(long_fam)
dim(long_num)

# Merge
long_fam_merged <- merge(long_num, long_fam, by = c("index", "year","int_num"))
#View(long_fam_merged)

# Check what didn't merge
not_long_fam_merged <- anti_join(long_num, long_fam,  by = c("index", "year","int_num")) 
dim(not_long_fam_merged) # all clear!

# Get summary stats
summary(long_fam_merged)

# Convert year to numeric
long_fam_merged$year <- as.numeric(long_fam_merged$year)

# Make year variable have four digits
long_fam_merged$year <- case_when(
  long_fam_merged$year < 60 ~ long_fam_merged$year + 2000, 
  long_fam_merged$year >= 60 & long_fam_merged$year < 100 ~ long_fam_merged$year + 1900)

# Indicate missing values with NA
long_fam_merged$state <- ifelse(long_fam_merged$state == 99 | long_fam_merged$state == 0, NA, long_fam_merged$state)
long_fam_merged$race <- ifelse(long_fam_merged$race == 9, NA, long_fam_merged$race)
long_fam_merged$hisp <- ifelse(long_fam_merged$hisp == 9 |long_fam_merged$hisp == 8 , NA, long_fam_merged$hisp)
long_fam_merged$afdc_tanf <- ifelse(long_fam_merged$afdc_tanf %in% c(999998,999999), NA, long_fam_merged$afdc_tanf)
long_fam_merged$wages <- ifelse(long_fam_merged$wages >= 9999999 | long_fam_merged$wages == 9, NA, long_fam_merged$wages)
long_fam_merged$hours <- ifelse(long_fam_merged$hours %in% c(9999, 7800), NA, long_fam_merged$hours)

# Convert wage brackets to averages in the bracket
long_fam_merged$wages <- case_when(
  long_fam_merged$wages == 1 ~ 250,
  long_fam_merged$wages == 2 ~ 750,
  long_fam_merged$wages == 3 ~ 1500,
  long_fam_merged$wages == 4 ~ 2500,
  long_fam_merged$wages == 5 ~ 4000,
  long_fam_merged$wages == 6 ~ 6250,
  long_fam_merged$wages == 7 ~ 8750,
  long_fam_merged$wages == 8 ~ 10000, # exception bc this is the lower bound
  .default = long_fam_merged$wages) 

# Change hisp to a dummy variable
long_fam_merged <- long_fam_merged %>% 
  mutate(hisp = ifelse(hisp == 0, 0, 1))

# Check missing values
for (var in names(long_fam_merged)){
  print(var)
  print(sum(is.na(long_fam_merged[[var]]) + is.nan(long_fam_merged[[var]])))
}

# Drop observations without interview numbers and fill in missing values
long_fam_merged_dropped <- long_fam_merged %>% 
  filter(!is.na(int_num)) %>% 
  group_by(index) %>% 
  fill(c(race, hisp), .direction = "downup") %>% 
  ungroup()

# Check missing values again
for (var in names(long_fam_merged_dropped)){
  print(var)
  print(sum(is.na(long_fam_merged_dropped[[var]])))
}

# Export data
write_dta(long_fam_merged_dropped, path = "family.dta")