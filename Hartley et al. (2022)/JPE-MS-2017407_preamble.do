
********************************************************************************
********************************************************************************
/* REQUIRED ADO PROGRAMS */
********************************************************************************
********************************************************************************
foreach a in estout ivreg2 ranktest {
	capture which `a'
	if (_rc != 0) ssc install `a'
}

********************************************************************************
********************************************************************************
/* MACRO DEFINITIONS */
********************************************************************************
********************************************************************************
{

matrix drop _all
mata: mata clear

/* Bootstrap defaults */
if ("${BN}" == "") global BN = 0
if ("${run_bootstrap}" == "") global run_bootstrap = 0

/* Macros: Independent and instrumental variables */
********************************************************************************

/* Panel data */
global X D_age D_age2 M_age M_age2 D_BENE D_EITC D_SPMpov D_unemprate D_pwelfare
capture unab state: SD1-SD51 M_SD1-M_SD51
capture unab year: YD1-YD38
global SD `state'
global YD `year'
global IV M_avgMBENE_c R_M_avgMBENE_c M_maxMBENE_c R_M_maxMBENE_c
global M_IV M_avgMBENE_c M_maxMBENE_c

/* Within-regime cross-sectional data (by Daughter's age) */
foreach critical_exposure in 1216 1218 {
	foreach adult in 1927 27 {
		global X`critical_exposure'_`adult'									 ///
			MAGE`critical_exposure' MAGE`critical_exposure'sq				 ///
			TANF`adult' EITC`adult' POV`adult' URATE`adult' PWELFARE`adult'
	}
	local a  // default == 1218
	if ("`critical_exposure'" == "1216") local a = "c"
	capture unab motherstate: M_SD`a'1-M_SD`a'51
	global MSD`critical_exposure' `motherstate'
}

/* Macros: Misclassification corrected variables */
********************************************************************************
foreach c in MC1 MC2 {
	foreach m in X SD IV {
	    global `c'_`m'
		foreach x of global `m' {
		    global `c'_`m' ${`c'_`m'} `c'_`x'
		}
	}
}

/* Lee-Solon-type controls: Quartic in mother's and daughter's age with
	interactions by quartic in daughter's demeaned age */
********************************************************************************
local all_X ${X}
local except "D_age D_age2 M_age M_age2"
local leesolon: list all_X - except
global leesolon `leesolon' CA1 CA2 CA3 CA4 MA1 MA2 MA3 MA4
global leesolon ${leesolon} CA1_R CA2_R CA3_R CA4_R
global leesolon_exog ${leesolon}
global leesolon_endog CA1_M1 CA2_M1 CA3_M1 CA4_M1
global leesolon_endog ${leesolon_endog} CA1_R_M1 CA2_R_M1 CA3_R_M1 CA4_R_M1
global leesolon ${leesolon} ${leesolon_endog}

global CA_IV ${IV}
forvalues i = 1/4 {
	foreach x of global IV {
		global CA_IV ${CA_IV} CA`i'_`x'
	}
}

/* Quadratic in state-year trends */
********************************************************************************
global statetrend
global statetrend2
forvalues i = 1/51 {
	global statetrend ${statetrend} t_SD`i'
	global statetrend2 ${statetrend2} t_SD`i' t2_SD`i'
}

/* Balanced time periods: Years pre- and post-reform */
********************************************************************************
global R_Y_balanced PreX Pre16 Pre15 Pre14 Pre13 Pre12 Pre11 Pre10 Pre9 Pre8 ///
	Pre7 Pre6 Pre5 Pre4 Pre3 Pre2 Pre1 Post1 Post2 Post3 Post4 Post5 Post6	 ///
	Post7 Post8 Post9 Post10 Post11 Post12 Post13 Post14 Post15 Post16 PostX
global R_M1_Y_balanced PreX_M1 Pre16_M1 Pre15_M1 Pre14_M1 Pre13_M1 Pre12_M1	 ///
	Pre11_M1 Pre10_M1 Pre9_M1 Pre8_M1 Pre7_M1 Pre6_M1 Pre5_M1 Pre4_M1		 ///
	Pre3_M1 Pre2_M1 Pre1_M1 Post1_M1 Post2_M1 Post3_M1 Post4_M1 Post5_M1	 ///
	Post6_M1 Post7_M1 Post8_M1 Post9_M1 Post10_M1 Post11_M1 Post12_M1		 ///
	Post13_M1 Post14_M1 Post15_M1 Post16_M1 PostX_M1
global R_Y_IV_balanced M_avgMBENE_c M_maxMBENE_c PreX_M_avgMBENE_c			 ///
	PreX_M_maxMBENE_c Pre16_M_avgMBENE_c Pre16_M_maxMBENE_c					 ///
	Pre15_M_avgMBENE_c Pre15_M_maxMBENE_c Pre14_M_avgMBENE_c				 ///
	Pre14_M_maxMBENE_c Pre13_M_avgMBENE_c Pre13_M_maxMBENE_c				 ///
	Pre12_M_avgMBENE_c Pre12_M_maxMBENE_c Pre11_M_avgMBENE_c				 ///
	Pre11_M_maxMBENE_c Pre10_M_avgMBENE_c Pre10_M_maxMBENE_c				 ///
	Pre9_M_avgMBENE_c Pre9_M_maxMBENE_c Pre8_M_avgMBENE_c Pre8_M_maxMBENE_c	 ///
	Pre7_M_avgMBENE_c Pre7_M_maxMBENE_c Pre6_M_avgMBENE_c Pre6_M_maxMBENE_c	 ///
	Pre5_M_avgMBENE_c Pre5_M_maxMBENE_c Pre4_M_avgMBENE_c Pre4_M_maxMBENE_c	 ///
	Pre3_M_avgMBENE_c Pre3_M_maxMBENE_c Pre2_M_avgMBENE_c Pre2_M_maxMBENE_c	 ///
	Pre1_M_avgMBENE_c Pre1_M_maxMBENE_c Post1_M_avgMBENE_c					 ///
	Post1_M_maxMBENE_c Post2_M_avgMBENE_c Post2_M_maxMBENE_c				 ///
	Post3_M_avgMBENE_c Post3_M_maxMBENE_c Post4_M_avgMBENE_c				 ///
	Post4_M_maxMBENE_c Post5_M_avgMBENE_c Post5_M_maxMBENE_c				 ///
	Post6_M_avgMBENE_c Post6_M_maxMBENE_c Post7_M_avgMBENE_c				 ///
	Post7_M_maxMBENE_c Post8_M_avgMBENE_c Post8_M_maxMBENE_c				 ///
	Post9_M_avgMBENE_c Post9_M_maxMBENE_c Post10_M_avgMBENE_c				 ///
	Post10_M_maxMBENE_c Post11_M_avgMBENE_c Post11_M_maxMBENE_c				 ///
	Post12_M_avgMBENE_c Post12_M_maxMBENE_c Post13_M_avgMBENE_c				 ///
	Post13_M_maxMBENE_c Post14_M_avgMBENE_c Post14_M_maxMBENE_c				 ///
	Post15_M_avgMBENE_c Post15_M_maxMBENE_c Post16_M_avgMBENE_c				 ///
	Post16_M_maxMBENE_c PostX_M_avgMBENE_c PostX_M_maxMBENE_c

}
********************************************************************************
********************************************************************************
/* STATISTICS PROGRAMS */
********************************************************************************
********************************************************************************
capture program drop addstats
program addstats
	
	syntax , [OBS BC LS DISPLAY I(string asis) INDicator(integer 9)			 ///
			  CURRENT(string asis) RLAB(string asis) Noisily R3]
	
	quietly {
	/* OBS: mean daughter-as-adult observations and mean daughter's age */ 
	/* BC: misclassification bias correction */ 
	/* LS: Lee-Solon (2009) age adjustments */ 
	/* DISPLAY: show population-average estimates after age-adjustments */ 
	/* I(): interaction term for heterogeneity estimates */ 
	/* CURRENT(): label stored estimates by specification column number */ 
	/* RLAB(): label for alternate specifications */ 
		
		tempname M V v cm rStat Ymeans W b
		tempvar T WY
		
		if (_rc != 0) {
			noisily display in red "Error code: `=_rc'"
			continue
		}
		
		/* NOTE: OVERRIDING NOISILY FEATURE USED FOR CHECKING RESULTS */
		local noisily  // comment out to show estimation commands noisily
		
		/* Estimate covariance matrix */
		matrix `V' = e(V)
		
		/* PSID sample weights */
		local aw
		if ("`e(wexp)'" != "") local aw = "[`e(wtype)' `e(wexp)']"
		
		/* Main variables of interest */
		local m = subinstr("`: word 3 of `e(cmdline)''", "(", "", .)
		if ("`bc'" != "") local m = substr("`m'", 5, .)
		local r_m = "R_`m'"
		local r = "R"
		
		local rt = "`: word 1 of `e(cmdline)''"
		
		/* Misclassification bias correction prefixes */
		if regexm("`e(cmdline)'", "MC2_") {
			local w = "MC2"
		}
		else if regexm("`e(cmdline)'", "MC1_") {
			local w = "MC1"
		}
		if ("`bc'" != "") {
			local m = "`w'_`m'"
			local r = "`w'_R"
			local r_m = "`w'_`r_m'"
		}
		if ("`r3'" != "") {
			local eqn = substr("`e(eqnames)'",-1,1)
			local m = "eq`eqn':M1"
			local r = "eq`eqn':R"
			local r_m = "eq`eqn':R_M1"
		}
		
		/* Baseline dependent variable means by before/after reform */
		cap {
			g `WY' = `: word 2 of `e(cmdline)''
			local Y = "`: word 2 of `e(cmdline)''"
		}
		if (_rc != 0) {
			g `WY' = `: word `: word count `e(depvar)'' of `e(depvar)''
			local Y = "`: word `: word count `e(depvar)'' of `e(depvar)''"
		}
		if (("`Y'" == "D1" | "`Y'" == "D1_f" | "`Y'" == "D2") & "`bc'" != "") {
			replace `WY' = `: word 2 of `e(cmdline)'' / `w'
		}
		tabstat `WY' `aw' if e(sample), by(DR) s(mean N) save
		tabstatmat `Ymeans'
		matrix roweq `Ymeans' = ""
		matrix rownames `Ymeans' = "Before Reform" "After Reform" "Pooled"
		matrix coleq `Ymeans' = "`Y'"
		matrix colnames `Ymeans' = "Mean" "N"
		local after = `Ymeans'[2,1]
		local pooled = `Ymeans'[3,1]
		estadd scalar after = `after', replace
		estadd scalar pooled = `pooled', replace
		estadd matrix EY = `Ymeans', replace
		
		/* Daughter observations as an adult */
		if ("`obs'" != "") {
			bysort C_ID: egen `T' = count(D1_f) if e(sample)
			tabstat `T' AGE if e(sample) `aw', s(mean sd) save
			matrix `rStat' = r(StatTotal)
			estadd scalar N_as_adult = `rStat'[1,1], replace
			estadd scalar Ns = `rStat'[2,1], replace
			estadd scalar Age_as_adult = `rStat'[1,2], replace
			estadd scalar As = `rStat'[2,2], replace
		}

		/* Number of daughters in panel */
		xtsum `WY' if e(sample)
		estadd scalar ng = r(n), replace

		/* Store IV test statistics as macro to preserve three decimal places */
		if regexm("`e(cmd)'", "iv") {
			estadd local id = `=1000*`e(idstat)''
			estadd local jstat = `=1000*`e(j)''
		}

		/* Test of estimate equality across indicator values */
		if (`indicator' == 1) {
			matrix i1b`rt'`Y' = e(b)
			matrix i1V`rt'`Y' = e(V)
		}
		if (`indicator' == 0) {
			capture confirm matrix i1b`rt'`Y'
			if (_rc != 0) {
				noisily display in red "Run indicator == 1 first"
				continue
			}
			matrix i0b`rt'`Y' = e(b)
			matrix i0V`rt'`Y' = e(V)
			foreach param in m r_m {
				tempname stat`param'
				estadd scalar i_dif_`param' =								 ///
					(i1b`rt'`Y'["y1","``param''"] -							 ///
					i0b`rt'`Y'["y1","``param''"])
				matrix `stat`param'' = 										 ///
					(i1b`rt'`Y'["y1","``param''"] -							 ///
					i0b`rt'`Y'["y1","``param''"]) * 						 ///
					invsym(i1V`rt'`Y'["``param''","``param''"] +			 ///
					i0V`rt'`Y'["``param''","``param''"]) *					 ///
					(i1b`rt'`Y'["y1","``param''"] - 						 ///
					i0b`rt'`Y'["y1","``param''"])
				estadd scalar i_chi_`param' = `stat`param''[1,1]
				estadd scalar i_chip_`param' = 1 - chi2(1, `stat`param''[1,1])
			}
			matrix drop i0b`rt'`Y'
			matrix drop i0V`rt'`Y'
			matrix drop i1b`rt'`Y'
			matrix drop i1V`rt'`Y'
		}
		
		/* Constructed Post-Regression Statistics: 
			Mother's Transmission Effect After Reform (MAR)
			Percent Change in Levels (lvlch)
			Percent Change over Baseline (pctch)
		***********************************************************************/
		
		if ("`ls'" != "") {
			/* Lee-Solon (2009) age adjustment */
			capture {
				forvalues j = 1/4 {
					if ("`bc'" != "") {
						local c`j' "`w'_CA`j'"
						local C`j' "`w'_CA`j'"
					}
					else {
						local c`j' "CA`j'"
						local C`j' "CA`j'"
					}
				}
				tabstat `C1' `C2' `C3' `C4' if e(sample) `aw', save
				tabstatmat `cm'
				
				nlcom														 ///
					(M_LS: _b[`m'] +										 ///
						_b[`c1'_M1] * `cm'[1,1] +							 ///
						_b[`c2'_M1] * `cm'[1,2] +							 ///
						_b[`c3'_M1] * `cm'[1,3] +							 ///
						_b[`c4'_M1] * `cm'[1,4])							 ///
					(R_LS: _b[`r'] +										 ///
						_b[`c1'_R] * `cm'[1,1] +							 ///
						_b[`c2'_R] * `cm'[1,2] +							 ///
						_b[`c3'_R] * `cm'[1,3] +							 ///
						_b[`c4'_R] * `cm'[1,4])								 ///
					(R_M_LS: _b[`r_m'] +									 ///
						_b[`c1'_R_M1] * `cm'[1,1] +							 ///
						_b[`c2'_R_M1] * `cm'[1,2] +							 ///
						_b[`c3'_R_M1] * `cm'[1,3] +							 ///
						_b[`c4'_R_M1] * `cm'[1,4])							 ///
					(lvlch_LS: 100 * (_b[`r_m'] +							 ///
						_b[`c1'_R_M1] * `cm'[1,1] +							 ///
						_b[`c2'_R_M1] * `cm'[1,2] +							 ///
						_b[`c3'_R_M1] * `cm'[1,3] +							 ///
						_b[`c4'_R_M1] * `cm'[1,4]) /						 ///
						(_b[`m'] +											 ///
						_b[`c1'_M1] * `cm'[1,1] +							 ///
						_b[`c2'_M1] * `cm'[1,2] +							 ///
						_b[`c3'_M1] * `cm'[1,3] +							 ///
						_b[`c4'_M1] * `cm'[1,4]))							 ///
					(pctch_LS: 100 * (((_b[`r_m'] +							 ///
						_b[`c1'_R_M1] * `cm'[1,1] +							 ///
						_b[`c2'_R_M1] * `cm'[1,2] +							 ///
						_b[`c3'_R_M1] * `cm'[1,3] +							 ///
						_b[`c4'_R_M1] * `cm'[1,4] +							 ///
						_b[`m'] +											 ///
						_b[`c1'_M1] * `cm'[1,1] +							 ///
						_b[`c2'_M1] * `cm'[1,2] +							 ///
						_b[`c3'_M1] * `cm'[1,3] +							 ///
						_b[`c4'_M1] * `cm'[1,4]) / `after') /				 ///
						((_b[`m'] +											 ///
						_b[`c1'_M1] * `cm'[1,1] +							 ///
						_b[`c2'_M1] * `cm'[1,2] +							 ///
						_b[`c3'_M1] * `cm'[1,3] +							 ///
						_b[`c4'_M1] * `cm'[1,4]) / `pooled') - 1))			 ///
					(MAR_LS: _b[`m'] +										 ///
						_b[`c1'_M1] * `cm'[1,1] +							 ///
						_b[`c2'_M1] * `cm'[1,2] +							 ///
						_b[`c3'_M1] * `cm'[1,3] +							 ///
						_b[`c4'_M1] * `cm'[1,4] +							 ///
						_b[`r_m'] +											 ///
						_b[`c1'_R_M1] * `cm'[1,1] +							 ///
						_b[`c2'_R_M1] * `cm'[1,2] +							 ///
						_b[`c3'_R_M1] * `cm'[1,3] +							 ///
						_b[`c4'_R_M1] * `cm'[1,4])
				
				mat `b' = r(b)
				mat `W' = r(V)
				local c = 0
				foreach x in M R R_M lvlch pctch MAR {
					local c = `c' + 1
					estadd scalar `x'_LS = `b'[1,`c'], replace
					estadd scalar `x'_LS_s = sqrt(`W'[`c',`c']), replace
					estadd scalar `x'_LS_p =								 ///
						2 * (1 - normal(abs(e(`x'_LS)/e(`x'_LS_s)))), replace
				}
				
				if ("`display'" != "") {
					noisily display _n "        1.M1" %12.7f `e(M_LS)' " ("	 ///
						%8.7f `e(M_LS_s)' ")" _n "         1.R"				 ///
						%12.7f `e(R_LS)' " (" %8.7f `e(R_LS_s)' ")" _n		 ///
						"      1.R_M1" %12.7f `e(R_M_LS)' " ("				 ///
						%8.7f `e(R_M_LS_s)' ")"
				}
			}
		}
		if ("`i'" != "") {
			/* Heterogeneity interactions */
			capture {
				nlcom														 ///
					(M1_int: _b[`m'] + _b[`i'_M1])							 ///
					(R_M1_int: _b[`r_m'] + _b[`i'_R_M1])					 ///
					(MAR_not: _b[`m'] + _b[`r_m'])							 ///
					(MAR_int: _b[`m'] + _b[`i'_M1] + 						 ///
						_b[`r_m'] + _b[`i'_R_M1])							 ///
					(lvlch_not: 100 * _b[`r_m'] / _b[`m'])					 ///
					(lvlch_int: 100 * (_b[`r_m'] + _b[`i'_R_M1]) /			 ///
						(_b[`m'] + _b[`i'_M1]))								 ///
					(pctch_not: 100 * ((((_b[`m'] + _b[`r_m'])) / `after') / ///
						(_b[`m'] / `pooled') - 1))							 ///
					(pctch_int: 100 * ((((_b[`m'] + _b[`i'_M1] +			 ///
						_b[`r_m'] + _b[`i'_R_M1])) / `after') /				 ///
						((_b[`m'] + _b[`i'_M1]) / `pooled') - 1))
			
				mat `b' = r(b)
				mat `W' = r(V)
				local c = 0
				local S M1_int R_M1_int MAR_not MAR_int lvlch_not lvlch_int 
				local S `S' pctch_not pctch_int
				foreach x of local S {
					local c = `c' + 1
					estadd scalar `x' = `b'[1,`c'], replace
					estadd scalar `x'_s = sqrt(`W'[`c',`c']), replace
					estadd scalar `x'_p = ///
						2 * (1 - normal(abs(e(`x')/e(`x'_s)))), replace
				}
			}
		}
		else {
			/* Standard case */
			capture {
				nlcom														 ///
					(MAR: _b[`m'] + _b[`r_m'])								 ///
					(lvlch: 100 * _b[`r_m'] / _b[`m'])						 ///
					(pctch: 100 * (((_b[`m'] + _b[`r_m']) / `after') /		 ///
						(_b[`m'] / `pooled') - 1))							 ///
					(relch: 100 * ((_b[`r_m'] / (`after' - `pooled')) /		 ///
						(_b[`m'] / `pooled') - 1))
				mat `b' = r(b)
				mat `W' = r(V)
				local c = 0
				foreach x in MAR lvlch pctch relch {
					local c = `c' + 1
					estadd scalar `x' = `b'[1,`c'], replace
					estadd scalar `x'_s = sqrt(`W'[`c',`c']), replace
					estadd scalar `x'_p = ///
						2 * (1 - normal(abs(e(`x')/e(`x'_s)))), replace
				}
			}
		}
		
		/* Estimates store naming conventions */
		if ("`current'" == "") {
			cap unab vars : _est*
			estimates store reg`=`: word count `vars''+1'
			if ("`noisily'" != "") noisily di _n							 ///
				"reg`=`: word count `vars''+1': `e(cmdline)'"
		}
		else {
			estimates store reg`current'`rlab'
			if ("`noisily'" != "") noisily di _n							 ///
				"reg`current'`rlab': `e(cmdline)'"
		}
	}
end

capture program drop colstats
program colstats
	
	syntax , Matrix(string) [Title(string) COLnames]
	
	quietly {
		
		if ("`title'" == "") local title = "Matrix column statistics:"
	
		matrix colmeans = J(1,`=rowsof(`matrix')',1) * `matrix' / ///
			`=rowsof(`matrix')'
		matrix list colmeans
		matrix demeaned = `matrix'
		forvalues i = 1/`=rowsof(`matrix')' {
			matrix demeaned[`i',1] = `matrix'[`i',1...] - colmeans
		}
		matrix list demeaned
		matrix colvars = demeaned' * demeaned / `=rowsof(`matrix')'
		matrix colvars = vecdiag(colvars)
		matrix list colvars
		matrix colstde = colvars * .
		local colnames
		forvalues j = 1/`=colsof(colvars)' {
			local colnames = "`colnames' (`j')"
			matrix colstde[1,`j'] = sqrt(colvars[1,`j'])
		}
		matrix colpvals = colvars * .
		forvalues j = 1/`=colsof(colvars)' {
			matrix colpvals[1,`j'] = 2 * (1 - normal(abs(colmeans[1,`j'])/ ///
				colstde[1,`j']))
		}
		
		matrix collims = J(2,`=colsof(`matrix')',.)
		forvalues j = 1/`=colsof(`matrix')' {
			matrix collims[1,`j'] = colmeans[1,`j'] - colstde[1,`j'] *		 ///
				abs(invnormal(.025)) \ colmeans[1,`j'] + colstde[1,`j'] *	 ///
				abs(invnormal(.025))
		}
				
		matrix results = colmeans \ colstde \ colpvals \ collims
		matrix rownames results = "Mean   " "Std.Err." "P-value " "LowerLim" ///
			 "UpperLim"
		if ("`colnames'" == "") {
			matrix colnames results = `colnames'
		}
		else {
			matrix colnames results = `:colnames `matrix''
		}
		noisily matrix list results, format(%6.3f) title(`title')
		noisily di " N = " `=rowsof(`matrix')'
	}
	
end
