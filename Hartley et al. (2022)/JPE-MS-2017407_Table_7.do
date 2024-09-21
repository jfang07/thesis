quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n											 ///
	"TABLE 7. MOTHER'S AFDC/TANF PARTICIPATION EFFECT RELATIVE TO" _n		 ///
	"DAUGHTER'S EARLY LIFE OUTCOMES AND EXPOSURE TIMING MECHANISMS" _n		 ///
	_dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_panel_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

local i = 0
foreach y of varlist D_LTEHS D_teen_childbirth {
	
	local i = `i' + 1
	reg `y' M1 R R_M1 ${X} ${SD} ${YD} [aw = D_CLWT], cluster(state)
	noisily addstats, current(`i') n
	
	local i = `i' + 1
	capture ivreg2 `y' (M1 R_M1 = ${IV}) R ${X} ${SD} ${YD} [aw = D_CLWT],	 ///
		cluster(state) partial(${X} ${SD} ${YD})
	noisily addstats, current(`i') n
	
}

capture ivreg2 D1 (M1r R_M1r = ${IV}) R ${X} ${SD} ${YD} [aw=D_CLWT],		 ///
	cluster(state) partial(${X} ${SD} ${YD})
noisily addstats, current(5) n

capture ivreg2 D1 (M1s_gt1 R_M1s_gt1 = ${IV}) R ${X} ${SD} ${YD}			 ///
	[aw = D_CLWT], cluster(state) partial(${X} ${SD} ${YD}) first
noisily addstats, current(6) n

capture ivreg2 D1 (M1s_gt5 R_M1s_gt5 = ${IV}) R ${X} ${SD} ${YD}			 ///
	[aw = D_CLWT], cluster(state) partial(${X} ${SD} ${YD}) first
noisily addstats, current(7) n

xtreg D1 M1 R R_M1 ${X} ${SD} ${YD} [aw = CWT], fe cluster(state) nonest
noisily addstats, current(8) n

noisily estimates table *, k(M1 R R_M1 M1r R_M1r *M1s_gt*) b(%9.3f)			 ///
	se(%9.3f) stats(idstat idp j jp ng N)

}
