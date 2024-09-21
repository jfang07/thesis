quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n ///
	"TABLE 2. INTERGENERATIONAL AFDC/TANF PARTICIPATION WITHIN WELFARE "	 ///
	"REGIMES" _n "PRE- OR POST-REFORM BY SUBSAMPLES FOR LOW MATERNAL "		 ///
	"EDUCATION AND INCOME" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_within-regime_cross-sectional_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

foreach s in edu pov {
	forvalues w = 1/2 {
		foreach wt in CLWT INCLWT {
			foreach reform of numlist 0/1 {
					
				reg D1927avg`w' M1c1218 ${X1218_1927} ${MSD1218}			 ///
					[aw=D_`wt'1927] if withinreform == `reform' & `s' == 1,	 ///
					vce(rob)
				if (`reform' == 0) {
					local m1 = _b[M1c1218]
				}
				else {
					estadd scalar d = _b[M1c1218] - `m1'
					estadd scalar d_p = .
					estadd scalar pd = 100 * (_b[M1c1218] - `m1') / `m1'
					estadd scalar pd_p = .
				}
				est store r`reform'_w`w'_`wt'WT_`s'
									
			}
		}
	}
}

if (${run_bootstrap} == 1) {

	noisily {
		set seed 10
		sort C_ID year
	}
	local R = ${BN}
	noisily display `R' " bootstrap replications"

	local r = 0
	while `r' < `R' {
		preserve
		bsample, strata(withinreform)
		
		capture {

			foreach s in edu pov {

				forvalues w = 1/2 {

					foreach wt in CLWT INCLWT {

						foreach reform of numlist 0/1 {
								
							reg D1927avg`w' M1c1218 ${X1218_1927} ${MSD1218} ///
								if withinreform == `reform' & `s' == 1		 ///
								[aw=D_`wt'1927]
							if (`reform' == 0) {
								local m1 = _b[M1c1218]
							}
							else {
								matrix d_W`w'_`wt'WT_`s' = 					 ///
									nullmat(d_W`w'_`wt'WT_`s') \			 ///
									_b[M1c1218] - `m1'
								matrix p_W`w'_`wt'WT_`s' = 					 ///
									nullmat(p_W`w'_`wt'WT_`s') \ 			 ///
									(_b[M1c1218] - `m1') / `m1'
							}
						}
					}
				}
			}
		}

		restore
		local r = `r' + 1
	}

	foreach s in edu pov {
		forvalues w = 1/2 {
			foreach wt in CLWT INCLWT {
				display _n "d_W`w'_`wt'WT_`s'"
				colstats, m(d_W`w'_`wt'WT_`s') title("Reform effect:") col
				matrix d = results
				matrix colnames d = "W`w'_`wt'WT_`s'"
				colstats, m(p_W`w'_`wt'WT_`s') title("Percent change:") col
				matrix p = results
				matrix colnames p = "W`w'_`wt'WT_`s'"
				matrix D`s' = nullmat(D`s'), d
				matrix P`s'= nullmat(P`s'), p
			}
		}
	}

	foreach s in edu pov {
		matrix list D`s', format(%6.3f)
		matrix list P`s', format(%6.3f)
		unab estr: _est_*`s'
		local estr = subinstr("`estr'", "_est_", "", .)
		foreach j of numlist 2(2)8 {
			local r = "`: word `j' of `estr''"
			estimates restore `r'
			estadd scalar d_p = `=D`s'[3,`=`j'/2']', replace
			estadd scalar pd_p = `=P`s'[3,`=`j'/2']', replace
			estimates store `r'
		}
	}

}

noisily estimates table r*_edu, k(M1c1218) b(%9.3f) se(%9.3f) stats(d d_p	 ///
	pd pd_p N) title("A. Low-educated mothers")

noisily estimates table r*_pov, k(M1c1218) b(%9.3f) se(%9.3f) stats(d d_p	 ///
	pd pd_p N) title("B. Low-income mothers")

}
