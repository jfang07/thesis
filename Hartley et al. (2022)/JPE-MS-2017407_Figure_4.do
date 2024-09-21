quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n											 ///
	"FIGURE 4. YEAR-TO-YEAR PERCENT CHANGES IN DEVIATIONS FROM STATE AND "	 ///
	"YEAR" _n "AVERAGES OF REAL AFDC/TANF BENEFIT STANDARDS FOR A FAMILY "	 ///
	"OF FOUR, BY STATE" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_state-level_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

xtset state year

sum PCE2018 if year == 2012
local p2012 = `r(mean)'
sum PCE2018 if year == 2018
local p2018 = `r(mean)'
g PCE2012_S = PCE2018_S * `p2018' / `p2012'
g PCE2012 = PCE2018 * `p2018' / `p2012'

drop if year < 1967 | year > 2012

g realben = afdctanf_4bene_S / PCE2012
reg realben i.year i.state
predict resben, res

bysort state: egen meanben = mean(realben)
g benpartial = resben + meanben

bysort state (year): g pbenpartial = 100 * D.benpartial / L.benpartial

tabstat pbenpartial if year > 1967, by(year) s(min p10 q p90 max mean n)

list year state state_name pbenpartial if year > 1967, clean

levelsof state
local fips = "`r(levels)'"
forvalues i = 1/5 {
	local firststate: word `=(`i'-1)*10+1' of `fips'
	local laststate: word `=(`i'-1)*10+10+(`i'==5)' of `fips'
	noisily table year state if year > 1967 & state >= `firststate' &		 ///
		state <= `laststate', stat(mean pbenpartial) nformat(%6.2f) nototals
}

export delim pbenpartial year state_name using								 ///
	"JPE-MS-2017407_Figure_4_output" if year > 1968, replace

}