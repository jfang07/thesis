quietly {
********************************************************************************
noisily display _n _dup(80) "*" _n ///
	"TABLE 3. DAUGHTER'S WELFARE PARTICIPATION PROBABILITY PRE- AND POST-"	 ///
	"REFORM" _n "BY MOTHER'S AFDC/TANF PARTICIPATION AND DAUGHTER'S "		 ///
	"EDUCATIONAL ATTAINMENT" _n _dup(80) "*" _n
********************************************************************************
use "JPE-MS-2017407_within-regime_cross-sectional_data.dta", clear
run "JPE-MS-2017407_preamble.do"
estimates clear

tab D1927max1 D1927max4 if M1c1218 == 0 & withinreform == 0 [aw=D_CLWT1927], ///
	matcell(r)
matrix R0M0 = r * inv(J(1,2,1) * r * J(2,1,1))

tab D1927max1 D1927max4 if M1c1218 == 0 & withinreform == 1 [aw=D_CLWT1927], ///
	matcell(r)
matrix R1M0 = r * inv(J(1,2,1) * r * J(2,1,1))

tab D1927max1 D1927max4 if M1c1218 == 1 & withinreform == 0 [aw=D_CLWT1927], ///
	matcell(r)
matrix R0M1 = r * inv(J(1,2,1) * r * J(2,1,1))

tab D1927max1 D1927max4 if M1c1218 == 1 & withinreform == 1 [aw=D_CLWT1927], ///
	matcell(r)
matrix R1M1 = r * inv(J(1,2,1) * r * J(2,1,1))

tab D1927max1 D1927max4 if M1c1218 == 1 & withinreform == 0 & mths == 1		 ///
	[aw=D_CLWT1927], matcell(r)
matrix R0M1E0 = r * inv(J(1,2,1) * r * J(2,1,1))

tab D1927max1 D1927max4 if M1c1218 == 1 & withinreform == 1 & mths == 1		 ///
	[aw=D_CLWT1927], matcell(r)
matrix R1M1E0 = r * inv(J(1,2,1) * r * J(2,1,1))

tab D1927max1 D1927max4 if M1c1218 == 1 & withinreform == 0 & mths == 0		 ///
	[aw=D_CLWT1927], matcell(r)
matrix R0M1E1 = r * inv(J(1,2,1) * r * J(2,1,1))

tab D1927max1 D1927max4 if M1c1218 == 1 & withinreform == 1 & mths == 0		 ///
	[aw=D_CLWT1927], matcell(r)
matrix R1M1E1 = r * inv(J(1,2,1) * r * J(2,1,1))

matrix Table3a = (R0M0[1,2], R1M0[1,2], R0M0[2,1], R1M0[2,1],				 ///
	R0M0[2,2], R1M0[2,2], 1 - R0M0[1,1], 1 - R1M0[1,1]) \					 ///
	(., R1M0[1,2] - R0M0[1,2], ., R1M0[2,1] - R0M0[2,1],					 ///
	., R1M0[2,2] - R0M0[2,2], ., R0M0[1,1] - R1M0[1,1]) \					 ///
	(R0M1[1,2], R1M1[1,2], R0M1[2,1], R1M1[2,1],							 ///
	R0M1[2,2], R1M1[2,2], 1 - R0M1[1,1], 1 - R1M1[1,1]) \					 ///
	(., R1M1[1,2] - R0M1[1,2], ., R1M1[2,1] - R0M1[2,1],					 ///
	., R1M1[2,2] - R0M1[2,2], ., R0M1[1,1] - R1M1[1,1])

matrix Table3b = (R0M1E0[1,2], R1M1E0[1,2], R0M1E0[2,1], R1M1E0[2,1],		 ///
	R0M1E0[2,2], R1M1E0[2,2], 1 - R0M1E0[1,1], 1 - R1M1E0[1,1]) \			 ///
	(., R1M1E0[1,2] - R0M1E0[1,2], ., R1M1E0[2,1] - R0M1E0[2,1],			 ///
	., R1M1E0[2,2] - R0M1E0[2,2], ., R0M1E0[1,1] - R1M1E0[1,1]) \			 ///
	(R0M1E1[1,2], R1M1E1[1,2], R0M1E1[2,1], R1M1E1[2,1],					 ///
	R0M1E1[2,2], R1M1E1[2,2], 1 - R0M1E1[1,1], 1 - R1M1E1[1,1]) \			 ///
	(., R1M1E1[1,2] - R0M1E1[1,2], ., R1M1E1[2,1] - R0M1E1[2,1],			 ///
	., R1M1E1[2,2] - R0M1E1[2,2], ., R0M1E1[1,1] - R1M1E1[1,1])

matrix Table3 = Table3a \ Table3b

matrix coleq Table3 = "SNAP|SSI only" "" "AFDC/TANF only" ""				 ///
	"Both AFDC/TANF and SNAP|SSI" "" "Either AFDC/TANF or SNAP|SSI" ""
matrix colnames Table3 = "Before" "After" "Before" "After" "Before" "After" ///
	"Before" "After"
matrix rownames Table3 =													 ///
	"No welfare exposure when young" "Change after reform"					 ///
	"Mother participated in AFDC/TANF" "Change after reform"				 ///
	"More than high school education" "Change after reform"					 ///
	"High school education or less" "Change after reform"

noisily matrix list Table3, format(%6.3f)

}
