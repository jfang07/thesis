quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n ///
	"TABLE 5. ROBUSTNESS CHECKS FOR MOTHER'S AFDC/TANF PARTICIPATION "		 ///
	"EFFECT BY" _n "ADDRESSING POTENTIAL LIFE-CYCLE BIAS OR GEOGRAPHIC "	 ///
	"MOBILITY" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_panel_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

/* Mothers ages 25 to 45, daughters through age 27 */

reg D1 M1_A2545 R R_M1_A2545 ${X} ${SD} ${YD} [aw = D_CLWT] if D_age <= 27 & ///
	D_N1427 >= 5 & M_N2545 >= 5, cluster(state) 
noisily addstats, current(1) n
	
capture ivreg2 D1 (M1_A2545 R_M1_A2545 = ${IV}) R ${X} ${SD} ${YD}			 ///
	[aw = D_CLWT] if D_age <= 27 & D_N1427 >= 5 & M_N2545 >= 5,				 ///
	cluster(state) partial(${X} ${SD} ${YD})
noisily addstats, current(2) n

/* Lee-Solon-type (2009) age adjustments */

reg D1 M1 R R_M1 ${leesolon} ${SD} ${YD} [aw = D_CLWT], cluster(state)
noisily addstats, ls current(3) n

capture ivreg2 D1 (M1 R_M1 ${leesolon_endog} = ${CA_IV}) R ${leesolon_exog}	 ///
	${SD} ${YD} [aw = D_CLWT], cluster(state) partial(${leesolon_exog} ${SD} ///
	${YD})
local LS_j = e(j)
local LS_jp = e(jp)

capture ivreg2 D1 (M1 R_M1 ${leesolon_endog} = ${CA_IV}) R ${leesolon_exog}	 ///
	 ${SD} ${YD} [aw = D_CLWT], cluster(state)
estadd scalar j = `LS_j', replace
estadd scalar jp = `LS_jp', replace
noisily addstats, ls current(4) n

/* Geographic mobility */
local i = 4
foreach x in D_SAMESTATE D_NONMOVER {
	
	local i = `i' + 1
	reg D1 M1 R R_M1 ${X} ${SD} ${YD} if `x' == 1 [aw = D_CLWT], cluster(state)
	noisily addstats, current(`i') n

	local i = `i' + 1
	capture ivreg2 D1 (M1 R_M1 = ${IV}) R ${X} ${SD} ${YD} if `x' == 1		 ///
		[aw = D_CLWT], cluster(state) partial(${X} ${SD} ${YD})
	noisily addstats, current(`i') n

}

noisily display "Note: Lee-Solon-type bias corrected estimates in reg3-re4 " ///
	"are displayed with the" _n "statistics below the coefficients (with a " ///
	`"suffix of "_LS")."'
noisily estimates table *, keep(M1_A2545 R R_M1_A2545 M1 R_M1) b(%10.3f)	 ///
	se(%10.3f) stats(M_LS M_LS_s R_LS R_LS_s R_M_LS R_M_LS_s idstat idp j jp ///
	ng N)

}
