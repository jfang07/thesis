quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n											 ///
	"TABLE 6. MOTHER'S AFDC/TANF PARTICIPATION EFFECT ON" _n "DAUGHTER'S "	 ///
	"LABOR MARKET AND ADULT FAMILY OUTCOMES, AGES 19 AND OVER" _n _dup(80)	 ///
	"*" _n
********************************************************************************
use "JPE-MS-2017407_panel_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

local i = 0
foreach y of varlist D_noearn D_EPOV100 D_single D_movedlastyear {
	local i = `i' + 1
	
	reg `y' M1 R R_M1 ${X} ${SD} ${YD} [aw = D_CLWT]						 ///
		if touse_over18earn == 1, cluster(state)
	noisily addstats, current(`=(`i'-1)*2+1') rlab(`y') n
	
	capture ivreg2 `y' (M1 R_M1 = ${IV}) R ${X} ${SD} ${YD} [aw = D_CLWT]	 ///
		if touse_over18earn == 1, cluster(state) partial(${X} ${SD} ${YD})
	noisily addstats, current(`=(`i'-1)*2+2') rlab(`y') n
}

noisily estimates table *, k(M1 R R_M1) b(%10.3f) se(%9.3f) stats(idstat idp ///
	j jp ng N)

}
