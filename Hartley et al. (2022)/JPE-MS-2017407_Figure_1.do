quietly {
********************************************************************************
noisily display _n _dup(65) "*" _n											 ///
	"FIGURE 1. TRENDS IN AFDC/TANF, FOOD STAMP/SNAP, SSI RECIPIENTS" _n 	 ///
	_dup(65) "*" _n
********************************************************************************
use "JPE-MS-2017407_state-level_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

keep if year <= 2012
collapse (sum) afdctanfrecipients_S snaprecipients_S ssirecipients_S		 ///
	(mean) snaprecipients ssi*rec*s, by(year)
rename *recipients_S *
replace snap = snaprecipients if snap == 0
replace ssi = cond(ssi_recipients != ., ssi_recipients, ssi_recs)
drop *rec*

noisily tabstat afdctanf snap ssi, by(year) format(%20.0fc) nototal

foreach x of varlist afdctanf snap ssi {
    replace `x' = `x' / 1000000
}

noisily export delim * using "JPE-MS-2017407_Figure_1_output", replace

}
