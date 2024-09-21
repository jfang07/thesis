quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n ///
	"TABLE 1. INTERGENERATIONAL WELFARE PARTICIPATION CORRELATIONS WITHIN"	 ///
	_n "WELFARE REGIMES PRE- OR POST-REFORM" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_within-regime_cross-sectional_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

forvalues w = 1/2 {
	foreach wt in CLWT INCLWT {
		foreach reform of numlist 0/1 {

			reg D1927avg`w' M1c1218 ${X1218_1927} ${MSD1218} [aw=D_`wt'1927] ///
				if withinreform == `reform', vce(rob)
			if (`reform' == 0) {
				local m1 = _b[M1c1218]
			}
			else {
				estadd scalar d = _b[M1c1218] - `m1'
				estadd scalar d_p = .
				estadd scalar pd = 100 * (_b[M1c1218] - `m1') / `m1'
				estadd scalar pd_p = .
			}
			est store r`reform'_w`w'_`wt'
						
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
			forvalues w = 1/2 {
				foreach wt in CLWT INCLWT {
					foreach reform of numlist 0/1 {
							
						reg D1927avg`w' M1c1218 ${X1218_1927} ${MSD1218}	 ///
							[aw=D_`wt'1927] if withinreform == `reform'
							
						if (`reform' == 0) {
							local m1 = _b[M1c1218]
						}
						else {
							matrix d_W`w'_`wt'WT = nullmat(d_W`w'_`wt'WT) \	 ///
								_b[M1c1218] - `m1'
							matrix p_W`w'_`wt'WT = nullmat(p_W`w'_`wt'WT) \	 ///
								(_b[M1c1218] - `m1') / `m1'
						}
											
					}
				}
			}
		}

		restore
		local r = `r' + 1
	}

	forvalues w = 1/2 {
		foreach wt in CLWT INCLWT {
			display _n "d_W`w'_`wt'WT"
			colstats, m(d_W`w'_`wt'WT) title("Reform effect:") col
			matrix d = results
			matrix colnames d = "W`w'_`wt'WT"
			colstats, m(p_W`w'_`wt'WT) title("Percent change:") col
			matrix p = results
			matrix colnames p = "W`w'_`wt'WT"
			matrix D = nullmat(D), d
			matrix P = nullmat(P), p
		}
	}
	matrix list D, format(%6.3f)
	matrix list P, format(%6.3f)

	unab estr: _est_*
	local estr = subinstr("`estr'", "_est_", "", .)
	foreach j of numlist 2(2)8 {
		local r = "`: word `j' of `estr''"
		estimates restore `r'
		estadd scalar d_p = `=D[3,`=`j'/2']', replace
		estadd scalar pd_p = `=P[3,`=`j'/2']', replace
		estimates store `r'
	}

}

noisily estimates table *, k(M1c1218) b(%9.3f) se(%9.3f) stats(d d_p pd pd_p N)

}
