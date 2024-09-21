quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n ///
	"FIGURE 3. INTERGENERATIONAL CORRELATIONS WITHIN PRE-/POST-REFORM "		 ///
	"REGIMES," _n "BY WELFARE DEFINITION" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_within-regime_cross-sectional_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

foreach stat in avg max {
	cap matrix drop b_`stat'
	cap matrix drop ll_`stat'
	cap matrix drop ul_`stat'
	foreach wt in CLWT INCLWT {
		forvalues w = 1/2 {
			foreach reform of numlist 0/1 {
				cap matrix drop b
				cap matrix drop ll
				cap matrix drop ul
				foreach d_age in 1927 27 {
					foreach c_age in 1218 1216 {

						reg D`d_age'`stat'`w' M1c`c_age' ${X`c_age'_`d_age'} ///
							${MSD`c_age'} [aw=D_`wt'`d_age']				 ///
							if withinreform == `reform', vce(rob)
						matrix rtable = r(table)
						foreach x in b ll ul {
							matrix `x' = nullmat(`x') \						 ///
								rtable["`x'","M1c`c_age'"]
						}
						
					}
				}
				foreach x in b ll ul {
					matrix `x'_`stat' = nullmat(`x'_`stat'), `x'
				}
			}
		}
	}
	foreach x in b ll ul {
		matrix coleq `x'_`stat' = "Sample wts" "Sample wts" "Sample wts"	 ///
			 "Sample wts" "Inv. daughter wts"
		matrix colnames `x'_`stat' = "AFDC" "TANF" "AFDC, SNAP|SSI"			 ///
			"TANF, SNAP|SSI" "AFDC" "TANF" "AFDC, SNAP|SSI" "TANF, SNAP|SSI"
		matrix rownames `x'_`stat' = "12-18, 19-27" "12-16, 19-27"			 ///
			"12-18, -27" "12-16, -27"
		noisily matrix list `x'_`stat'
	}
}

foreach stat in avg max {
	foreach x in b ll ul {
		putexcel set JPE-MS-2017407_Figure_3_output, modify sheet("`x'.`stat'")
		putexcel A1 = matrix(`x'_`stat'), names
		putexcel A1 = "rownames"
	}
}

}
