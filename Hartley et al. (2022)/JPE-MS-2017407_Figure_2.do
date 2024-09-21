quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n											 ///
	"FIGURE 2. TRENDS IN INTERGENERATIONAL CORRELATIONS OF" _n "INCOME "	 ///
	"STATUS AND WELFARE PARTICIPATION" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_rolling-cohort_trends_data", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

forvalues year = 1978/2012 {
	
	preserve

		/* Restrict sample: Women ages 27-42 who formed own family units */
		********************************************************************
		sort C_ID YEAR
		drop if YEAR > `year'
		mark S`year' if YEAR == `year' & C_FEMALE == 1 & C_Adult == 1 & 	 ///
			C_AGE >= 27 & C_AGE <= 42 &	!inlist(D_CLWT1927, ., 0)
		by C_ID: egen S = max(S`year')
		drop if S == 0
		
		/* Daughter's welfare participation and income status */
		********************************************************************
		
		forvalues w = 1/2 {
			tempvar dw`w' dpov`w'
			
			local welfare1 TANF OWEL
			local welfare2 TANF OWEL SSI FS

			/* Has daughter received welfare? */
			local welfaregroup
			foreach x of local welfare`w' {
				local welfaregroup `welfaregroup' C_`x'
			}
			egen `dw`w'' = rowmax(`welfaregroup')
			replace `dw`w'' = . if C_FU == 0 | C_AGE < 19 | C_AGE > 27 |	 ///
					inlist(C_CLWT, ., 0) | C_FAMHEAD + C_subFAMHEAD == 0
			by C_ID: egen D_avgW`w' = mean(`dw`w'')
			by C_ID: egen D_maxW`w' = max(`dw`w'')

			/* Is daughter's mean income below X percent of poverty? */
			by C_ID: egen `dpov`w'' = mean(C_famIncome_real / C_famPOV_real) ///
				if C_FU == 1 & C_Adult == 1 & C_AGE >= 19 & C_AGE <= 27 &	 ///
				!inlist(C_CLWT, ., 0)
			by C_ID: egen D_POV`w' = max(`dpov`w'')
			replace D_POV`w' = (D_POV`w' < `w') if D_POV`w' != .
			
			drop `dw`w'' `dpov`w''
		}
		
		/* Daughter's log of mean income as an adult aged 19-27 */
		by C_ID: egen DI = mean(C_famIncome_real) if C_FU == 1 &		 ///
			C_Adult == 1 & C_AGE >= 19 & C_AGE <= 27 & !inlist(C_CLWT, ., 0)
		by C_ID: egen D_INC = max(DI)
		replace D_INC = ln(D_INC + 1)
		
		/* Mother's welfare participation and income status */
		********************************************************************
		
		/* Has mother ever received each type of welfare? */
		foreach x of local welfare1 {
			replace P_M_`x' = . if P_M_FU == 0 | C_Adult == 1 |				 ///
				P_M_FAMHEAD + P_M_subFAMHEAD == 0
			by C_ID: egen P_M_ever`x' = max(P_M_`x')
		}
		egen M_W1 = rowmax(P_M_ever*)
		
		forvalues w = 1/2 {
			tempvar mpov`w'
			
			/* Is mother's mean income below X percent of poverty? */
			by C_ID: egen `mpov`w'' = mean(M_famIncome_real /				 ///
				P_M_famPOV_real) if P_M_FU == 1 & P_M_Adult == 1 &			 ///
				C_Adult == 0 & !inlist(P_M_CLWT, ., 0)
			by C_ID: egen M_POV`w' = max(`mpov`w'')
			replace M_POV`w' = (M_POV`w' < `w') if M_POV`w' != .
			
			drop `mpov`w''
		}
		
		/* Mother's log of mean income before daughter becomes an adult */
		by C_ID: egen MI = mean(M_famIncome_real) if P_M_FU == 1 &	 ///
			!inlist(P_M_CLWT, ., 0) & C_Adult == 0 & P_M_Adult == 1
		by C_ID: egen M_INC = max(MI)
		replace M_INC = ln(M_INC + 1)
		
		/* Estimation */
		********************************************************************
		keep if S`year' == 1
		
		capture matrix drop r
		foreach y in INC POV1 POV2 maxW2 maxW1 avgW2 avgW1 {
			local y_M M_`y'
			if (regexm("`y'","W") == 1) local y_M M_W1
			reg D_`y' `y_M' [aw = D_CLWT1927]
			matrix r = nullmat(r), _b[`y_M']
		}
		
		matrix IGE`w' = nullmat(IGE`w') \ r

	restore
	
}  // end loop over years
	
numlist "1978/2012"
matrix rownames IGE = `r(numlist)'
matrix colnames IGE = INC POV1 POV2 maxW2 maxW1 avgW2 avgW1
noisily matrix list IGE

putexcel set JPE-MS-2017407_Figure_2_output, replace sheet("Results")
putexcel A1 = matrix(IGE), names
putexcel A1 = "year"

}
