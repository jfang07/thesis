* File Name: data_cleaning.do
* Author: Joshua Fang
* Last Updated: 4/10/2024


* Clear environment
clear all

* Install outreg2 if needed
*ssc install outreg2

* Load data
use data/data.dta, clear

* Describe data
d


**# Data cleaning and additional manipulation ----------------

* Check for extreme summary stats
sum // all clear
bys reform_exp sex: sum

* Check missing values
foreach var of varlist _all {
	ds `var'
    count if missing(`var')
}

* Use LOCF to fill in time-invariant variables
foreach var of varlist race_hd hisp_hd avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp reform_exp avg_age_hd_exp mod_state_hd_exp ///
avg_adj_wages_hd avg_adj_indiv_wages  avg_adj_wages_hd_exp {
    bysort id (year): replace `var' = `var'[_n-1] if missing(`var')
}

* Interpolate and extrapolate time-variant variables
foreach var of varlist educ age_hd hours_hd educ_hd adj_wages_hd ///
	adj_indiv_wages {
	bysort id (year): ipolate `var' year, gen(`var'_filled)
	drop `var'
	rename `var'_filled `var'
}

* Repeat for state controls
foreach var of varlist  unemp_hd povrate_hd recip_rate_hd adj_ben4_hd adj_eitc3_hd {
	bysort state_hd (year): ipolate `var' year, gen(`var'_filled)
	drop `var'
	rename `var'_filled `var'
}

* Check missing values again
foreach var of varlist _all {
	ds `var'
    count if missing(`var')
}

* Check key distributions
hist age // right skewed, most people in 20s-30s
graph bar, over(educ) // most are just HS grads
hist age_hd // right skewed, most people in 20s-30s
graph bar, over(mar) // mostly unmarried
graph bar, over(lfp) // mostly in labor force
graph bar, over(educ_hd) // most are just HS grads
hist hours_hd // bimodal, either not working or working around 2000 hours
hist adj_wages_hd // heavily right skewed, most people earn little
hist avg_adj_wages_hd // right skewed, most heads earn little
hist avg_adj_indiv_wages // right skewed, most people earn little
hist avg_adj_wages_hd_exp // right skewed, more spread, and most people earn little

* Check race
tab race_hd

* Fix miscoded race
replace race_hd = 3 if race_hd == 5 & year < 2004 // grouping pre-2004 Latino with Indigenous
replace race_hd = 4 if race_hd == 5 & year >= 2004 // grouping post-2005 Pacific Islander with Asian

* Check race again
tab race_hd

* Recode relationship to head as a head indicator
replace relat_to_head = 0 if relat_to_head == 20 | relat_to_head == 2
replace relat_to_head = 1 if relat_to_head == 10
rename relat_to_head head

* Add squared ages
gen age_sq = age^2
gen age_hd_sq = age_hd^2
gen avg_age_hd_exp_sq = avg_age_hd_exp^2

* Compare average adjusted wages between mothers and children
gen abs_mob_indiv = 1 if avg_adj_indiv_wages > avg_adj_wages_hd_exp
replace abs_mob_indiv = 0 if avg_adj_indiv_wages <= avg_adj_wages_hd_exp
count if missing(abs_mob_indiv)

* Drop observations without reform indicator
drop if missing(reform_exp)

* Label variables and values
label variable rank_hd_exp "Mother's rank"
label variable rank_indiv "Child's rank"
label variable rank_hd_exp2 "Mother's rank"
label variable rank_indiv2 "Child's rank"
label variable num_fam "Child's family unit size"
label variable abs_mob_indiv "Indicator for child's absolute upward mobility"
label variable head "Indicator for child's household headship"
label variable race_hd "Race of child's household head"
label variable hisp_hd "Hispanicity of child's household head"
label variable age "Child's age"
label variable count_wages "Child's wage observation frequency between ages 25 and 55"
label variable count_wages_hd_exp "Mother's wage observation frequency between ages 25 and 55"
label variable age_sq "Child's age, squared"
label variable age_hd "Age of child's household head"
label variable age_hd_sq "Age of child's household head, squared"
label variable avg_age_hd_exp "Mother's average age when child was under 18"
label variable avg_age_hd_exp_sq "Mother's average age when child was under 18, squared"
label variable adj_ben4_hd "AFDC/TANF 4-person benefit standard in child's state (2017 $)"
label variable adj_eitc3_hd "Maximum 3-person EITC in child's state (2017 $)"
label variable povrate_hd "Poverty rate in state of child's state (%)"
label variable recip_rate_hd "AFDC/TANF recipiency rate in child's state (%)"
label variable unemp_hd "Unemployment rate in child's state (%)"
label variable reform_exp "Reform exposure indicator for mother when child was under 18"
label define race_hd 1 "White" 2 "Black" 3 "Native/Latino" 4 "Asian/Pacific Islander" 7 "Other"
label values race_hd race_hd
label define hisp_hd 0 "Not Hispanic" 1 "Hispanic"
label values hisp_hd hisp_hd
label define head 0 "Spouse of head" 1 "Head"
label values head head
label variable avg_adj_ben4_hd_exp "Mother's average AFDC/TANF 4-person benefit standard when child was under 18"
label variable max_adj_ben4_hd_exp "Mother's maximum AFDC/TANF 4-person benefit standard when child was under 18"
label variable avg_num_fam "Mother's average family unit size when child was under 18"
label variable avg_educ_mom "Mother's average years of education when child was under 18"
label variable mod_state_hd_exp "Mother's modal state when child was under 18"
label variable mod_mar_hd_exp "Indicator for mother's modal marital status when child was under 18"
label variable sex_hd "Sex of child's household head"
label variable state_hd "State of child's household"
label variable cur_particip "Current AFDC/TANF participation of child's household head"
label variable hours_hd "Hours worked by child's household head in the past year"
label variable adj_indiv_wages "Child's wages in the past year (2017 $)"
label variable avg_adj_indiv_wages "Child's average wages between ages 25 and 55 (2017 $)"
label variable avg_adj_wages_hd_exp "Mother's average wages between ages 25 and 55 (2017 $)"
label variable avg_adj_wages_hd "Average wages of child's household head between child's ages 25 and 55 (2017 $)"
label variable adj_wages_hd "Wages of child's household head in the past year (2017 $)"
label variable educ "Child's years of education"
label variable mar "Indicator for child's marital status"
label define mar 0 "Unmarried" 1 "Married"
label values mar mar
label variable lfp "Indicator for child's labor force participation"
label define lfp 0 "Not in labor force" 1 "In labor force"
label values lfp lfp

* Save data set
save data/cleaner_data.dta, replace


**# Repeat for placebo test

* Data cleaning ******************************
use data/test_data.dta, clear

* Check missing values
foreach var of varlist _all {
	ds `var'
    count if missing(`var')
}

* Use LOCF to fill in time-invariant variables
foreach var of varlist race_hd hisp_hd avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp reform_exp avg_age_hd_exp mod_state_hd_exp ///
avg_adj_wages_hd avg_adj_indiv_wages  avg_adj_wages_hd_exp {
    bysort id (year): replace `var' = `var'[_n-1] if missing(`var')
}

* Interpolate and extrapolate time-variant variables
foreach var of varlist educ age_hd hours_hd educ_hd adj_wages_hd ///
	adj_indiv_wages {
	bysort id (year): ipolate `var' year, gen(`var'_filled)
	drop `var'
	rename `var'_filled `var'
}

* Repeat for state controls
foreach var of varlist  unemp_hd povrate_hd recip_rate_hd adj_ben4_hd adj_eitc3_hd {
	bysort state (year): ipolate `var' year, gen(`var'_filled)
	drop `var'
	rename `var'_filled `var'
}

* Check missing values again
foreach var of varlist _all {
	ds `var'
    count if missing(`var')
}

* Check key distributions
hist age // right skewed, most people in 20s-30s
graph bar, over(educ) // most are just HS grads
hist age_hd // right skewed, most people in 20s-30s
graph bar, over(mar) // mostly unmarried
graph bar, over(lfp) // mostly in labor force
graph bar, over(educ_hd) // most are just HS grads
hist hours_hd // bimodal, either not working or working around 2000 hours
hist adj_wages_hd // heavily right skewed, most people earn little
hist avg_adj_wages_hd // right skewed, most heads earn little
hist avg_adj_indiv_wages // right skewed, most people earn little
hist avg_adj_wages_hd_exp // right skewed, more spread, and most people earn little

* Check race
tab race_hd

* Fix miscoded race
replace race_hd = 3 if race_hd == 5 & year < 2004 // grouping pre-2004 Latino with Indigenous
replace race_hd = 4 if race_hd == 5 & year >= 2004 // grouping post-2005 Pacific Islander with Asian

* Check race again
tab race_hd // there is still a 6, which should not be therew

* Examine miscoded race
list id if race_hd == 6
tab race_hd if id == 5012007 // supposed to be 2
replace race_hd = 2 if race_hd == 6

* Recode relationship to head as a head indicator
replace relat_to_head = 0 if relat_to_head == 20 | relat_to_head == 2
replace relat_to_head = 1 if relat_to_head == 10
rename relat_to_head head

* Add squared ages
gen age_sq = age^2
gen age_hd_sq = age_hd^2
gen avg_age_hd_exp_sq = avg_age_hd_exp^2

* Compare average adjusted wages between fathers and children
gen abs_mob_indiv = 1 if avg_adj_indiv_wages > avg_adj_wages_hd_exp
replace abs_mob_indiv = 0 if avg_adj_indiv_wages <= avg_adj_wages_hd_exp
count if missing(abs_mob_indiv)

* Drop observations without reform indicator
drop if missing(reform_exp)

* Label variables and values
label variable rank_hd_exp "Father's rank"
label variable rank_indiv "Child's rank"
label variable rank_hd_exp2 "Father's rank"
label variable rank_indiv2 "Child's rank"
label variable num_fam "Child's family unit size"
label variable abs_mob_indiv "Child's birth cohort absolute mobility rate (%)"
label variable head "Indicator for child's household headship"
label variable race_hd "Race of child's household head"
label variable hisp_hd "Hispanicity of child's household head"
label variable age "Child's age"
label variable age_sq "Child's age, squared"
label variable count_wages "Child's wage observation frequency between ages 25 and 55"
label variable count_wages_hd_exp "Father's wage observation frequency between ages 25 and 55"
label variable age_hd "Age of child's household head"
label variable age_hd_sq "Age of child's household head, squared"
label variable avg_age_hd_exp "Father's average age when child was under 18"
label variable avg_age_hd_exp_sq "Father's average age when child was under 18, squared"
label variable adj_ben4_hd "AFDC/TANF 4-person benefit standard in child's state (2017 $)"
label variable adj_eitc3_hd "Maximum 3-person EITC in child's state (2017 $)"
label variable povrate_hd "Poverty rate in state of child's state (%)"
label variable recip_rate_hd "AFDC/TANF recipiency rate in child's state (%)"
label variable unemp_hd "Unemployment rate in child's state (%)"
label variable reform_exp "Reform exposure indicator for father when child was under 18"
label define race_hd 1 "White" 2 "Black" 3 "Native/Latino" 4 "Asian/Pacific Islander" 7 "Other"
label values race_hd race_hd
label define hisp_hd 0 "Not Hispanic" 1 "Hispanic"
label values hisp_hd hisp_hd
label define head 0 "Spouse of head" 1 "Head"
label values head head
label variable avg_adj_ben4_hd_exp "Father's average AFDC/TANF 4-person benefit standard when child was under 18"
label variable max_adj_ben4_hd_exp "Father's maximum AFDC/TANF 4-person benefit standard when child was under 18"
label variable avg_num_fam "Father's average family unit size when child was under 18"
label variable avg_educ_mom "Mother's average years of education when child was under 18"
label variable avg_educ_hd_exp "Father's average years of education when child was under 18"
label variable mod_state_hd_exp "Father's modal state when child was under 18"
label variable mod_mar_hd_exp "Indicator for mother's modal marital status when child was under 18"
label variable sex_hd "Sex of child's household head"
label variable state_hd "State of child's household"
label variable cur_particip "Current AFDC/TANF participation of child's household head"
label variable hours_hd "Hours worked by child's household head in the past year"
label variable adj_indiv_wages "Child's wages in the past year (2017 $)"
label variable avg_adj_indiv_wages "Child's average wages between ages 25 and 55 (2017 $)"
label variable avg_adj_wages_hd "Average wages of child's household head between child's ages 25 and 55 (2017 $)"
label variable adj_wages_hd "Wages of child's household head in the past year (2017 $)"
label variable educ "Child's years of education"
label variable mar "Indicator for child's marital status"
label define mar 0 "Unmarried" 1 "Married"
label values mar mar
label variable lfp "Indicator for child's labor force participation"
label define lfp 0 "Not in labor force" 1 "In labor force"
label values lfp lfp

* Load data
save data/cleaner_test_data.dta, replace
