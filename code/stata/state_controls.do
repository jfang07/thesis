* File Name: state_controls.dta
* Author: Joshua Fang
* Last Updated: 3/26/2024

* Clear environment
clear all

* Get working directory
pwd

* Change directory to thesis
cd ..
cd "Thesis"

**# PCE data ------------------------------------------------------

* Load PCE data
import delimited "DPCERD3A086NBEA.csv", clear

* Describe data
d

* Convert date to datetime
gen date_dt = date(date, "YMD")
format date_dt %td

* Extract the year
gen year = year(date_dt)

* Rename PCE
rename dpcerd3a086nbea pce

* Keep only year and PCE
keep year pce

* Label pce
label variable pce "Personal Consumption Expenditures deflator"

* Check years of data availability
list year if !missing(pce)

* Save data set
save pce, replace

**# CPS ASEC data ------------------------------------------------

* Prep data set
set more off

clear
quietly infix                ///
  int     year        1-4    ///
  long    serial      5-9    ///
  byte    month       10-11  ///
  double  cpsid       12-25  ///
  byte    asecflag    26-26  ///
  double  asecwth     27-37  ///
  byte    statefip    38-39  ///
  byte    pernum      40-41  ///
  double  cpsidp      42-55  ///
  double  cpsidv      56-70  ///
  double  asecwt      71-81  ///
  byte    offpov      82-83  ///
  byte    offpovuniv  84-85  ///
  using `"cps_00001.dat"'

replace asecwth    = asecwth    / 10000
replace asecwt     = asecwt     / 10000

format cpsid      %14.0f
format asecwth    %11.4f
format cpsidp     %14.0f
format cpsidv     %15.0f
format asecwt     %11.4f

label var year       `"Survey year"'
label var serial     `"Household serial number"'
label var month      `"Month"'
label var cpsid      `"CPSID, household record"'
label var asecflag   `"Flag for ASEC"'
label var asecwth    `"Annual Social and Economic Supplement Household weight"'
label var statefip   `"State (FIPS code)"'
label var pernum     `"Person number in sample unit"'
label var cpsidp     `"CPSID, person record"'
label var cpsidv     `"Validated Longitudinal Identifier"'
label var asecwt     `"Annual Social and Economic Supplement Weight"'
label var offpov     `"Official Poverty Status (IPUMS constructed)"'
label var offpovuniv `"Official Poverty Rate Universe"'

label define month_lbl 01 `"January"'
label define month_lbl 02 `"February"', add
label define month_lbl 03 `"March"', add
label define month_lbl 04 `"April"', add
label define month_lbl 05 `"May"', add
label define month_lbl 06 `"June"', add
label define month_lbl 07 `"July"', add
label define month_lbl 08 `"August"', add
label define month_lbl 09 `"September"', add
label define month_lbl 10 `"October"', add
label define month_lbl 11 `"November"', add
label define month_lbl 12 `"December"', add
label values month month_lbl

label define asecflag_lbl 1 `"ASEC"'
label define asecflag_lbl 2 `"March Basic"', add
label values asecflag asecflag_lbl

label define statefip_lbl 01 `"Alabama"'
label define statefip_lbl 02 `"Alaska"', add
label define statefip_lbl 04 `"Arizona"', add
label define statefip_lbl 05 `"Arkansas"', add
label define statefip_lbl 06 `"California"', add
label define statefip_lbl 08 `"Colorado"', add
label define statefip_lbl 09 `"Connecticut"', add
label define statefip_lbl 10 `"Delaware"', add
label define statefip_lbl 11 `"District of Columbia"', add
label define statefip_lbl 12 `"Florida"', add
label define statefip_lbl 13 `"Georgia"', add
label define statefip_lbl 15 `"Hawaii"', add
label define statefip_lbl 16 `"Idaho"', add
label define statefip_lbl 17 `"Illinois"', add
label define statefip_lbl 18 `"Indiana"', add
label define statefip_lbl 19 `"Iowa"', add
label define statefip_lbl 20 `"Kansas"', add
label define statefip_lbl 21 `"Kentucky"', add
label define statefip_lbl 22 `"Louisiana"', add
label define statefip_lbl 23 `"Maine"', add
label define statefip_lbl 24 `"Maryland"', add
label define statefip_lbl 25 `"Massachusetts"', add
label define statefip_lbl 26 `"Michigan"', add
label define statefip_lbl 27 `"Minnesota"', add
label define statefip_lbl 28 `"Mississippi"', add
label define statefip_lbl 29 `"Missouri"', add
label define statefip_lbl 30 `"Montana"', add
label define statefip_lbl 31 `"Nebraska"', add
label define statefip_lbl 32 `"Nevada"', add
label define statefip_lbl 33 `"New Hampshire"', add
label define statefip_lbl 34 `"New Jersey"', add
label define statefip_lbl 35 `"New Mexico"', add
label define statefip_lbl 36 `"New York"', add
label define statefip_lbl 37 `"North Carolina"', add
label define statefip_lbl 38 `"North Dakota"', add
label define statefip_lbl 39 `"Ohio"', add
label define statefip_lbl 40 `"Oklahoma"', add
label define statefip_lbl 41 `"Oregon"', add
label define statefip_lbl 42 `"Pennsylvania"', add
label define statefip_lbl 44 `"Rhode Island"', add
label define statefip_lbl 45 `"South Carolina"', add
label define statefip_lbl 46 `"South Dakota"', add
label define statefip_lbl 47 `"Tennessee"', add
label define statefip_lbl 48 `"Texas"', add
label define statefip_lbl 49 `"Utah"', add
label define statefip_lbl 50 `"Vermont"', add
label define statefip_lbl 51 `"Virginia"', add
label define statefip_lbl 53 `"Washington"', add
label define statefip_lbl 54 `"West Virginia"', add
label define statefip_lbl 55 `"Wisconsin"', add
label define statefip_lbl 56 `"Wyoming"', add
label define statefip_lbl 61 `"Maine-New Hampshire-Vermont"', add
label define statefip_lbl 65 `"Montana-Idaho-Wyoming"', add
label define statefip_lbl 68 `"Alaska-Hawaii"', add
label define statefip_lbl 69 `"Nebraska-North Dakota-South Dakota"', add
label define statefip_lbl 70 `"Maine-Massachusetts-New Hampshire-Rhode Island-Vermont"', add
label define statefip_lbl 71 `"Michigan-Wisconsin"', add
label define statefip_lbl 72 `"Minnesota-Iowa"', add
label define statefip_lbl 73 `"Nebraska-North Dakota-South Dakota-Kansas"', add
label define statefip_lbl 74 `"Delaware-Virginia"', add
label define statefip_lbl 75 `"North Carolina-South Carolina"', add
label define statefip_lbl 76 `"Alabama-Mississippi"', add
label define statefip_lbl 77 `"Arkansas-Oklahoma"', add
label define statefip_lbl 78 `"Arizona-New Mexico-Colorado"', add
label define statefip_lbl 79 `"Idaho-Wyoming-Utah-Montana-Nevada"', add
label define statefip_lbl 80 `"Alaska-Washington-Hawaii"', add
label define statefip_lbl 81 `"New Hampshire-Maine-Vermont-Rhode Island"', add
label define statefip_lbl 83 `"South Carolina-Georgia"', add
label define statefip_lbl 84 `"Kentucky-Tennessee"', add
label define statefip_lbl 85 `"Arkansas-Louisiana-Oklahoma"', add
label define statefip_lbl 87 `"Iowa-N Dakota-S Dakota-Nebraska-Kansas-Minnesota-Missouri"', add
label define statefip_lbl 88 `"Washington-Oregon-Alaska-Hawaii"', add
label define statefip_lbl 89 `"Montana-Wyoming-Colorado-New Mexico-Utah-Nevada-Arizona"', add
label define statefip_lbl 90 `"Delaware-Maryland-Virginia-West Virginia"', add
label define statefip_lbl 99 `"State not identified"', add
label values statefip statefip_lbl

label define offpov_lbl 01 `"Below Poverty Line"'
label define offpov_lbl 02 `"Above Poverty Line"', add
label define offpov_lbl 99 `"NIU"', add
label values offpov offpov_lbl

label define offpovuniv_lbl 00 `"Out of Poverty Universe"'
label define offpovuniv_lbl 01 `"In Poverty Universe"', add
label values offpovuniv offpovuniv_lbl

* Remove observations not in universe
drop if offpovuniv == 00

* Drop regions
drop if statefip > 56

* Create poverty indicator
gen pov = 1 if offpov == 01,
replace pov = 0 if offpov == 02

* Generated weighted poverty sums
bys statefip year: egen pov_sum = total(asecwt * pov)

* Generated weighted population counts
bys statefip year: egen pov_univ = total(asecwt * offpovuniv)

* Calculate state poverty rates
gen povrate = pov_sum/pov_univ*100

* Collapse data set
collapse povrate, by(statefip year)

* Rename statefip as state
rename statefip state

* Save data set
save povrate, replace

**# Hartley data ------------------------------------------------

* Load Hartley data
use ".\Hartley et al. (2022)\JPE-MS-2017407_state-level_data.dta", replace

* Keep only relevant variables
keep state year afdctanfrecipients_S afdctanf_4bene_S // note that state uses FIPS codes

* Rename variables
rename state state_fips 
rename afdctanfrecipients_S recip
rename afdctanf_4bene_S ben4

* Keep only observations from 1968-1979
keep if year >= 1968 & year < 1980

* Save data set
save hartley.dta, replace

**# Robert Moffitt data -----------------------------------------

* Load Moffitt data
clear all
infile state year max_at fs_guar avg_mcd pce cpi_med rmax_afdc rfs_guar ravg_mcd ///
 rben_sum mod_ben_sum nfam_at_jul nrec_at_jul avg_at_ben_fam_jul ///
 avg_at_ben_rec_jul avg_nfam_at_yr avg_nrec_at_yr avg_at_ben_fam_yr ///
 avg_at_ben_rec_yr up med_need st_pop income_pc unemp avg_earn_manuf ///
 using "ben_data.txt" 
 
* Keep only relevant variables
keep state year unemp st_pop // note that st_pop is in thousands

* Rescale st_pop variable
replace st_pop = 1000*st_pop

* Keep only observations from 1968-1979
keep if year >= 1968 & year < 1980

* Recode missing values 
foreach var of varlist _all{
	ds `var'
	replace `var' = . if `var' == -1
}

* Save data set
save moffitt, replace


**# University of Kentucky data ------------------------------------------------

* Load UK data
import excel "UKCPR_National_Welfare_Data_Update_020623.xlsx", sheet(Data) first clear

**# Data Exploration

* Describe data
d

* Keep only state-level variables of interest
keep state state_fips year PovertyRate Population Unemploymentrate AFDC* EITCMax*

* Rename variables
rename PovertyRate povrate
rename Population st_pop
rename Unemploymentrate unemp
rename AFDCTANFRecipients recip
rename AFDCTANFbenefitfor4personf ben4
rename AFDCTANFBenefitfor3personf ben3
rename AFDCTANFBenefitfor2Personf ben2
rename EITCMaximumCreditNoDependent eitc0
rename EITCMaximumCredit1Dependent eitc1
rename EITCMaximumCredit2Dependents eitc2
rename EITCMaximumCredit3Dependents eitc3

* Drop standards with missing years in Hartley's data set
drop ben2 ben3 eitc0 eitc1 eitc2

* Append Moffitt data
append using moffitt.dta

* Fill in missing FIPS values
bysort state (state_fips) : replace state_fips = state_fips[_n-1] if missing(state_fips) 

* Merge Hartley data to fill in missing values
merge 1:1 state_fips year using hartley.dta, update

* Rename state_fips as state to match PISD
drop state
rename state_fips state

* Calculate recipiency rate
gen recip_rate = recip/st_pop*100

* Drop unnecessary variables
drop recip AFDCTANFCaseloads st_pop AFDCTANF_F*

* Merge with PCE data
drop _merge
merge m:1 year using pce.dta
drop if _merge == 2
drop _merge


* Merge in CPS ASEC data
merge 1:1 state year using povrate.dta, update
drop _merge

* Summarize data
sum

* Sort data
sort state year

* Save data
save state_controls.dta, replace