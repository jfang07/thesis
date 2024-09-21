quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n											 ///
	"FIGURE 5. TIMING OF WELFARE REFORM EFFECTS ON INTERGENERATIONAL "		 ///
	"TRANSMISSION" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_panel_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

matrix Reform = 0
matrix colnames Reform = Reform
foreach outcomevar of varlist D1 D2 {
	
	estimates clear
	noisily display _n "Outcome variable: `: var label `outcomevar''" _n

	reg `outcomevar' M1 ${R_M1_Y_balanced} ${R_Y_balanced} ${X} ${SD} ${YD}	 ///
		[aw=D_CLWT], cluster(state)
	display _n "OLS-BASELINE: `e(cmdline)'"
	matrix r = r(table)
	matrix R = (r[1,"PreX_M1".."Pre1_M1"], Reform, r[1,"Post1_M1".."PostX_M1"])'
	matrix R = R, J(35,5,0)

	capture ivreg2 `outcomevar' (M1 ${R_M1_Y_balanced} = ${R_Y_IV_balanced}) ///
		${R_Y_balanced} ${X} ${SD} ${YD} [aw=D_CLWT], cluster(state)		 ///
		partial(${R_Y_balanced} ${X} ${SD} ${YD})
	display _n "IV-BASELINE: `e(cmdline)'"
	matrix B = e(b)
	matrix W = e(V)
	matrix V = vecdiag(W)
	matrix b = (B[1,"PreX_M1".."Pre1_M1"], Reform, B[1,"Post1_M1".."PostX_M1"])'
	matrix v = (V[1,"PreX_M1".."Pre1_M1"], Reform, V[1,"Post1_M1".."PostX_M1"])'
	forvalues i = 1/`=rowsof(b)' {
		matrix R[`i',2] = b[`i',1] * J(1,3,1) + (0, ///
			-1 * v[`i',1]^.5 * abs(invnormal(.025)), ///
			v[`i',1]^.5 * abs(invnormal(.025)))
	}

	capture ivreg2 `outcomevar' (M1 ${R_M1_Y_balanced} = ${R_Y_IV_balanced}) ///
		${R_Y_balanced} ${X} ${SD} ${YD} ${statetrend} [aw=D_CLWT],			 ///
		partial(${R_Y_balanced} ${X} ${SD} ${YD} ${statetrend}) cluster(state)
	display _n "LINEAR-TREND: `e(cmdline)'"
	matrix b = e(b)
	matrix R[1,5] = (b[1,"PreX_M1".."Pre1_M1"], Reform, 					 ///
		b[1,"Post1_M1".."PostX_M1"])'

	capture ivreg2 `outcomevar' (M1 ${R_M1_Y_balanced} = ${R_Y_IV_balanced}) ///
		${R_Y_balanced} ${X} ${SD} ${YD} ${statetrend2} [aw=D_CLWT],		 ///
		partial(${R_Y_balanced} ${X} ${SD} ${YD} ${statetrend2}) cluster(state)
	display _n "QUADRATIC-TREND: `e(cmdline)'"
	matrix b = e(b)
	matrix R[1,6] = (b[1,"PreX_M1".."Pre1_M1"], Reform, 					 ///
		b[1,"Post1_M1".."PostX_M1"])'

	matrix colnames R = OLS IV IV_ll IV_ul LINE QUAD
	noisily matrix list R, title("`: var label `outcomevar''")
	
	putexcel set JPE-MS-2017407_Figure_5_output, sheet("`outcomevar'") modify
	putexcel A1 = matrix(R), names
	putexcel A1 = "Y"

}
}
