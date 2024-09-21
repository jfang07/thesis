quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n											 ///
	"TABLE 4. INTERGENERATIONAL TRANSMISSION OF MOTHER'S AFDC/TANF "		 ///
	"PARTICIPATION" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_panel_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

/* Daughter's AFDC/TANF (1) and AFDC, SNAP, SSI (2) */
forvalues w = 1/2 {

	reg D`w' M1 R R_M1 ${X} ${SD} ${YD} [aw = D_CLWT], cluster(state)
	noisily addstats, current(1) rlab(D`w') n

	capture ivreg2 D`w' (M1 R_M1 = ${IV}) R ${X} ${SD} ${YD} [aw = D_CLWT],	 ///
		cluster(state) partial(${X} ${SD} ${YD}) first
	noisily addstats, current(2) rlab(D`w') n

	reg D`w' MC`w'_M1 MC`w'_R MC`w'_R_M1 ${MC`w'_X} ${MC`w'_SD} ${YD}		 ///
		[aw = D_CLWT], cluster(state) nocons
	noisily addstats, bc current(3) rlab(D`w') n

	capture ivreg2 D`w' (MC`w'_M1 MC`w'_R_M1 = ${MC`w'_IV}) MC`w'_R			 ///
		${MC`w'_X} ${MC`w'_SD} ${YD} [aw = D_CLWT], cluster(state)			 ///
		partial(${MC`w'_X} ${MC`w'_SD} ${YD}) nocons first
	noisily addstats, bc current(4) rlab(D`w') n

}

noisily estimates table *, k(M1 R R_M1 MC1_M1 MC1_R MC1_R_M1 MC2_M1 MC2_R 	 ///
	MC2_R_M1) b(%9.3f) se(%9.3f) stats(idstat idp j jp lvlch lvlch_p		 ///
	pctch pctch_p ng N)

}
