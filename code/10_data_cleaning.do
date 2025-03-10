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

* Generate Black indiciator
gen black = 1 if race_hd == 2
replace black = 0 if race_hd != 2

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
label variable avg_rank_hd_exp "Mother's rank"
label variable rank_indiv "Rank"
label variable num_fam_hd "Family unit size"
label variable abs_mob_indiv "Abs. mobility indicator"
label variable head "Household head indicator"
label variable race_hd "Race of head"
label variable black "Black indicator"
label variable hisp_hd "Hispanicity of head"
label variable age "Age"
label variable count_wages "Count of non-missing wages, ages 25-30"
label variable count_wages_hd_exp "Mother's count of non-missing wages, ages 25-30"
label variable age_sq "Age squared"
label variable age_hd "Age of head"
label variable age_hd_sq "Age of head squared"
label variable avg_age_hd_exp "Mother's avg. age, child under 18"
label variable avg_age_hd_exp_sq "Mother's avg. age squared, child under 18"
label variable adj_ben4_hd "State AFDC/TANF 4-person benefit standard (2017 $)"
label variable adj_eitc3_hd "Max. 3-person EITC (2017 $)"
label variable povrate_hd "State poverty rate (%)"
label variable recip_rate_hd "State AFDC/TANF recipiency rate (%)"
label variable unemp_hd "State unemploymet rate (%)"
label variable reform_exp "Reform exposure indicator for mother, child under 18"
label define race_hd 1 "White" 2 "Black" 3 "Native/Latino" 4 "Asian/Pacific Islander" 7 "Other"
label values race_hd race_hd
label define hisp_hd 0 "Not Hispanic" 1 "Hispanic"
label values hisp_hd hisp_hd
label define head 0 "Spouse of head" 1 "Head"
label values head head
label variable avg_adj_ben4_hd_exp "Mother's avg. AFDC/TANF 4-person benefit standard, child under 18"
label variable max_adj_ben4_hd_exp "Mother's max. AFDC/TANF 4-person benefit standard, child under 18"
label variable avg_num_fam "Mother's avg. family unit size, child under 18"
label variable avg_educ_mom "Mother's avg. years of education, child under 18"
label variable mod_state_hd_exp "Mother's modal state, child under 18"
label variable mod_mar_hd_exp "Indicator for mother's modal marital status, child under 18"
label variable sex_hd "Sex of head"
label variable state_hd "State of"
label variable cur_particip "Current AFDC/TANF participation of head"
label variable hours_hd "Hours worked by head in the past year"
label variable adj_indiv_wages "wages in the past year (2017 $)"
label variable avg_adj_indiv_wages "Avg. wages, ages 25-30 (2017 $)"
label variable avg_adj_wages_hd_exp "Mother's avg. wages, ages 25-30 (2017 $)"
label variable avg_adj_wages_hd "Avg. wages of head, ages 25-30 (2017 $)"
label variable adj_wages_hd "Wages of head in the past year (2017 $)"
label variable educ "Years of education"
label variable mar "Marriage indicator"
label define mar 0 "Unmarried" 1 "Married", replace
label values mar mar
label variable lfp "Labor force particip. indicator"
label define lfp 0 "Not in labor force" 1 "In labor force"
label values lfp lfp
label define black 0 "Not Black" 1 "Black"
label values black black

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
tab race_hd // there is still a 6, which should not be therew

* Examine miscoded race
list id if race_hd == 6
tab race_hd if id == 5012007 // supposed to be 2
replace race_hd = 2 if race_hd == 6

* Generate Black indiciator
gen black = 1 if race_hd == 2
replace black = 0 if race_hd != 2

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
label variable avg_rank_hd_exp "Father's rank"
label variable rank_indiv "Rank"
label variable num_fam_hd "Family unit size"
label variable abs_mob_indiv "Abs. mobility indicator"
label variable head "Household head indicator"
label variable race_hd "Race of head"
label variable black "Black indicator"
label variable hisp_hd "Hispanicity of head"
label variable age "Age"
label variable age_sq "Age squared"
label variable count_wages "Count of non-missing wages, ages 25-30"
label variable count_wages_hd_exp "Father's wage observation frequency, ages 25-30"
label variable age_hd "Age of head"
label variable age_hd_sq "Age of head squared"
label variable avg_age_hd_exp "Father's avg. age, child under 18"
label variable avg_age_hd_exp_sq "Father's avg. age, child under 18 squared"
label variable adj_ben4_hd "State AFDC/TANF 4-person benefit standard (2017 $)"
label variable adj_eitc3_hd "Max. 3-person EITC (2017 $)"
label variable povrate_hd "State poverty rate (%)"
label variable recip_rate_hd "STATE AFDC/TANF recipiency rate (%)"
label variable unemp_hd "State unemploymet rate (%)"
label variable reform_exp "Reform exposure indicator for father, child under 18"
label define race_hd 1 "White" 2 "Black" 3 "Native/Latino" 4 "Asian/Pacific Islander" 7 "Other"
label values race_hd race_hd
label define hisp_hd 0 "Not Hispanic" 1 "Hispanic"
label values hisp_hd hisp_hd
label define head 0 "Spouse of head" 1 "Head"
label values head head
label variable avg_adj_ben4_hd_exp "Father's avg. AFDC/TANF 4-person benefit standard, child under 18"
label variable max_adj_ben4_hd_exp "Father's max. AFDC/TANF 4-person benefit standard, child under 18"
label variable avg_num_fam "Father's avg. family unit size, child under 18"
label variable avg_educ_mom "Mother's avg. years of education, child under 18"
label variable avg_educ_hd_exp "Father's avg. years of education, child under 18"
label variable mod_state_hd_exp "Father's modal state, child under 18"
label variable mod_mar_hd_exp "Indicator for mother's modal marital status, child under 18"
label variable sex_hd "Sex of head"
label variable state_hd "State of head"
label variable cur_particip "Current AFDC/TANF participation of head"
label variable hours_hd "Hours worked by head in the past year"
label variable adj_indiv_wages "wages in the past year (2017 $)"
label variable avg_adj_indiv_wages "Avg. wages, ages 25-30 (2017 $)"
label variable avg_adj_wages_hd "Avg. wages of head, ages 25-30 (2017 $)"
label variable adj_wages_hd "Wages of head in the past year (2017 $)"
label variable educ "Years of education"
label variable mar "Marriage indicator"
label define mar 0 "Unmarried" 1 "Married", replace
label values mar mar
label variable lfp "Labor force particip. indicator"
label define lfp 0 "Not in labor force" 1 "In labor force"
label values lfp lfp
label define black 0 "Not Black" 1 "Black"
label values black black

* Load data
save data/cleaner_test_data.dta, replace
