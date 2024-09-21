
clear all
macro drop _all
set maxvar 32767 
set mat 5000
set more off, permanently
set varabbrev off
set output proc

local dt = `"`=subinstr("${S_DATE}"," ","",.)'"' +							 ///
	`"_`=subinstr("${S_TIME}",":","_",.)'"'
capture log close
log using "JPE-MS-2017407_figures_tables_`dt'", replace text


/*******************************************************************************
********************************************************************************

  "Welfare Reform and the Intergenerational Transmission of Dependence"
    Robert Paul Hartley, Carlos Lamarche, and James P. Ziliak
    Journal of Political Economy, accepted July 22, 2021
    Manuscript: Estimation for Figures and Tables
	
        Separate files for reproducing each figure and table prepared for the
        final manuscript are run below. Each figure/table .do file can be run
        separately given the required files below are in the same directory. 
        
        Required files:
            1.	JPE-MS-2017407_preamble.do [macros and statistical programs]
            2.	JPE-MS-2017407_rolling-cohort_trends_data.dta
            3.	JPE-MS-2017407_within-regime_cross-sectional_data.dta
            4.	JPE-MS-2017407_panel_data.dta
            5.	JPE-MS-2017407_state-level_data.dta
		
        The JPE-MS-2017407_preamble.do file establishes a set of macros and 
        statistical programs used throughout, and it will automatically install
        three required ado files if not currently available (estout, ivreg2, 
        and ranktest):
        
            // See JPE-MS-2017407_preamble.do:
            foreach a in estout ivreg2 ranktest {
                capture which `a'
                if (_rc != 0) ssc install `a'
            }
        
        The number of bootstrap replications is set at BN = 1000
        (see "Bootstrap settings" below).
        
********************************************************************************
*******************************************************************************/

********************************************************************************
********************************************************************************
/* ESTIMATION */
********************************************************************************
********************************************************************************

/* Bootstrap settings */
global BN = 1000  // number of bootstrap replications
global run_bootstrap = 1  // set == 1 to run bootstrap estimation; else == 0

/* Manuscript figures */
foreach f of numlist 1/6 {
	run JPE-MS-2017407_Figure_`f'
}

/* Manuscript tables */
foreach t of numlist 1/7 {
 	run JPE-MS-2017407_Table_`t'
}

********************************************************************************
display "${S_DATE} ${S_TIME}"
capture log close
