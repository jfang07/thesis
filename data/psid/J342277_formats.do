
label define ER10001L  ///
       1 "Release number 1 - April 1999"  ///
       2 "Release number 2 - May 1999"  ///
       3 "Release number 3- June 1999"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"  ///
       7 "Release number 7 - March 2016"

label define ER11848L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
forvalues n = 1/51 {
    label define ER12221L `n' "Actual state (PSID State code)"  , modify
}
label define ER12221L       99 "DK; NA"  , modify
label define ER12221L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define ER12222L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER12222L `n' "Actual number"  , modify
}
label define ER12222L       17 "At least some post-graduate work"  , modify
label define ER12222L       99 "NA; DK"  , modify

label define ER13001L  ///
       1 "Release number 1 - August 2001"  ///
       2 "Release number 2 - October 2001"  ///
       3 "Release number 3 - January 2002"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - February 2014"  ///
       7 "Release number 7 - January 2016"  ///
       8 "Release number 8 - November 2017"  ///
       9 "Release number 9 - June 2023"
forvalues n = 1/51 {
    label define ER13004L `n' "Actual state (PSID State code)"  , modify
}
label define ER13004L       99 "DK; NA"  , modify
label define ER13004L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER15928L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
label define ER16516L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER16516L `n' "Actual number"  , modify
}
label define ER16516L       17 "At least some post-graduate work"  , modify
label define ER16516L       99 "NA; DK"  , modify

label define ER17001L  ///
       1 "Release number 1 - November 2002"  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - November 2013"  ///
       4 "Release number 4 - February 2014"  ///
       5 "Release number 5 - January 2016"  ///
       6 "Release number 6 - November 2017"  ///
       7 "Release number 7 - June 2023"
forvalues n = 1/51 {
    label define ER17004L `n' "Actual state (PSID State code)"  , modify
}
label define ER17004L       99 "DK; NA"  , modify
label define ER17004L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER19989L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER2001L  ///
       1 "Release number 1 - August 1995"  ///
       2 "Release number 2 - January 2003"  ///
       3 "Release number 3 - March 2004"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"
forvalues n = 14/96 {
    label define ER2007L `n' "Actual age"  , modify
}
label define ER2007L       97 "Ninety-seven years of age or older"  , modify
label define ER2007L        0 "Wild code"  , modify
label define ER2007L       99 "NA; DK"  , modify
label define ER20457L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER20457L `n' "Actual number"  , modify
}
label define ER20457L       17 "At least some post-graduate work"  , modify
label define ER20457L       99 "NA; DK"  , modify

label define ER21001L  ///
       1 "Release number 1 - December 2004"  ///
       2 "Release number 2 - October 2005"  ///
       3 "Release number 3 - November 2005"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - February 2014"  ///
       7 "Release number 7 - January 2016"  ///
       8 "Release number 8 - November 2017"  ///
       9 "Release number 9 - June 2023"
forvalues n = 1/51 {
    label define ER21003L `n' "Actual state (PSID State code)"  , modify
}
label define ER21003L       99 "DK; NA"  , modify
label define ER21003L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER23426L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Native American"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Latino origin or descent"  ///
       6 "Color besides black or white"  ///
       7 "Other"  ///
       9 "NA; DK"
label define ER24148L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER24148L `n' "Actual number"  , modify
}
label define ER24148L       17 "At least some post-graduate work"  , modify
label define ER24148L       99 "NA; DK"  , modify

label define ER25001L  ///
       1 "Release number 1, March 2007"  ///
       2 "Release number 2, May 2007"  ///
       3 "Release number 3, November 2013"  ///
       4 "Release number 4, February 2014"  ///
       5 "Release number 5, January 2016"  ///
       6 "Release number 6, November 2017"  ///
       7 "Release number 7, June 2023"
forvalues n = 1/51 {
    label define ER25003L `n' "Actual state (PSID State code)"  , modify
}
label define ER25003L       99 "DK; NA"  , modify
label define ER25003L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER27392L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not Spanish, Hispanic or Latino"

label define ER27393L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       0 "Wild code"  ///
       9 "NA; DK"
label define ER28047L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER28047L `n' "Actual number"  , modify
}
label define ER28047L       17 "At least some post-graduate work"  , modify
label define ER28047L       99 "NA; DK"  , modify

label define ER36001L  ///
       1 "Release number 1, June 2009"  ///
       2 "Release number 2, October 2009"  ///
       3 "Release number 3, January 2012"  ///
       4 "Release number 4, December 2013"  ///
       5 "Release number 5, February 2014"  ///
       6 "Release number 6, January 2016"  ///
       7 "Release number 7, November 2017"  ///
       8 "Release number 8, June 2023"
forvalues n = 1/51 {
    label define ER36003L `n' "Actual state (PSID State code)"  , modify
}
label define ER36003L       99 "DK; NA"  , modify
label define ER36003L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define ER3941L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not Spanish, Hispanic or Latino"

label define ER3944L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"

label define ER40564L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not Spanish, Hispanic or Latino"

label define ER40565L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       0 "Wild code"  ///
       9 "NA; DK"
label define ER41037L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER41037L `n' "Actual number"  , modify
}
label define ER41037L       17 "At least some post-graduate work"  , modify
label define ER41037L       99 "NA; DK"  , modify
forvalues n = 1/51 {
    label define ER4156L `n' "Actual state (PSID State code)"  , modify
}
label define ER4156L       99 "NA; DK;  Latino sample family"  , modify
label define ER4156L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define ER4158L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER4158L `n' "Actual number"  , modify
}
label define ER4158L       17 "At least some post-graduate work"  , modify
label define ER4158L       99 "NA; DK"  , modify

label define ER42001L  ///
       1 "Release number 1, July 2011"  ///
       2 "Release number 2, November 2013"  ///
       3 "Release number 3, February 2014"  ///
       4 "Release number 4, January 2016"  ///
       5 "Release number 5, November 2017"  ///
       6 "Release number 6, June 2023"
forvalues n = 1/51 {
    label define ER42003L `n' "Actual state (PSID State code)"  , modify
}
label define ER42003L       99 "DK; NA"  , modify
label define ER42003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER46542L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER46543L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA"
label define ER46981L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER46981L `n' "Actual number"  , modify
}
label define ER46981L       17 "At least some post-graduate work"  , modify
label define ER46981L       99 "DK; NA"  , modify

label define ER47301L  ///
       1 "Release number 1, July 2013"  ///
       2 "Release number 2, November 2013"  ///
       3 "Release number 3, February 2014"  ///
       4 "Release number 4, January 2016"  ///
       5 "Release number 5, November 2017"  ///
       6 "Release number 6, June 2023"
forvalues n = 1/51 {
    label define ER47303L `n' "Actual state (PSID State code)"  , modify
}
label define ER47303L       99 "DK; NA"  , modify
label define ER47303L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER5001L  ///
       1 "Release number 1 - August 1995"  ///
       2 "Release number 2 - January 2003"  ///
       3 "Release number 3 - March 2004"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"
forvalues n = 14/96 {
    label define ER5006L `n' "Actual age"  , modify
}
label define ER5006L       97 "Ninety-seven years of age or older"  , modify
label define ER5006L        0 "Wild code"  , modify
label define ER5006L       98 "NA; DK"  , modify
label define ER5006L       99 "NA; DK"  , modify

label define ER51903L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER51904L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
label define ER52405L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER52405L `n' "Actual number"  , modify
}
label define ER52405L       17 "At least some post-graduate work"  , modify
label define ER52405L       99 "DK; NA"  , modify

label define ER53001L  ///
       1 "Release number 1, May 2015"  ///
       2 "Release number 2, January 2016"  ///
       3 "Release number 3, November 2017"  ///
       4 "Release number 4, June 2023"
forvalues n = 1/51 {
    label define ER53003L `n' "Actual state (PSID State code)"  , modify
}
label define ER53003L       99 "DK; NA"  , modify
label define ER53003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER57658L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER57659L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"
label define ER58223L        0 "Completed no grades of school"  , modify
forvalues n = 1/17 {
    label define ER58223L `n' "Actual number"  , modify
}
label define ER58223L       99 "DK; NA"  , modify

label define ER60001L  ///
       1 "Release number 1, May 2017"  ///
       2 "Release number 2, June 2023"
forvalues n = 1/51 {
    label define ER60003L `n' "Actual state (PSID State code)"  , modify
}
label define ER60003L       99 "DK; NA"  , modify
label define ER60003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER64809L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER64810L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"
label define ER65459L        0 "Completed no grades of school"  , modify
forvalues n = 1/17 {
    label define ER65459L `n' "Actual number"  , modify
}
label define ER65459L       99 "DK; NA"  , modify

label define ER66001L  ///
       1 "Release number 1, February 2019"  ///
       2 "Release number 2, August 2019"  ///
       3 "Release number 3, June 2023"
forvalues n = 1/51 {
    label define ER66003L `n' "Actual state (PSID State code)"  , modify
}
label define ER66003L       99 "DK; NA"  , modify
label define ER66003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER6811L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER6814L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
forvalues n = 1/51 {
    label define ER6996L `n' "Actual state (PSID State code)"  , modify
}
label define ER6996L       99 "NA; DK;  Latino sample family"  , modify
label define ER6996L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define ER6998L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER6998L `n' "Actual number"  , modify
}
label define ER6998L       17 "At least some post-graduate work"  , modify
label define ER6998L       99 "NA; DK"  , modify

label define ER7001L  ///
       1 "Release number 1 - August 1996"  ///
       2 "Release number 2 - January 2003"  ///
       3 "Release number 3 - March 2004"  ///
       4 "Release number 4 - May 2008"  ///
       5 "Release number 5 - November 2013"  ///
       6 "Release number 6 - January 2016"
forvalues n = 14/96 {
    label define ER7006L `n' "Actual age"  , modify
}
label define ER7006L       97 "Ninety-seven years of age or older"  , modify
label define ER7006L        0 "Wild code"  , modify
label define ER7006L       98 "DK"  , modify
label define ER7006L       99 "NA"  , modify

label define ER70881L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER70882L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"
label define ER71538L        0 "Completed no grades of school"  , modify
forvalues n = 1/17 {
    label define ER71538L `n' "Actual number"  , modify
}
label define ER71538L       99 "DK; NA"  , modify

label define ER72001L  ///
       1 "Release number 1, March 2021"
forvalues n = 1/51 {
    label define ER72003L `n' "Actual state (PSID State code)"  , modify
}
label define ER72003L       99 "DK; NA"  , modify
label define ER72003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER76896L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER76897L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"
label define ER77599L        0 "Completed no grades of school"  , modify
forvalues n = 1/17 {
    label define ER77599L `n' "Actual number"  , modify
}
label define ER77599L       99 "DK; NA"  , modify

label define ER78001L  ///
       1 "Release number 1, June 2023"  ///
       2 "Release number 2, October 2023"
forvalues n = 1/51 {
    label define ER78003L `n' "Actual state (PSID State code)"  , modify
}
label define ER78003L       99 "DK; NA"  , modify
label define ER78003L        0 "Inap.: U.S. territory or foreign country"  , modify

label define ER81143L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  not Spanish, Hispanic or Latino"

label define ER81144L  ///
       1 "White"  ///
       2 "Black, African-American, or Negro"  ///
       3 "American Indian or Alaska Native"  ///
       4 "Asian"  ///
       5 "Native Hawaiian or Pacific Islander"  ///
       7 "Other"  ///
       9 "DK; NA; refused"
label define ER81926L        0 "Completed no grades of school"  , modify
forvalues n = 1/17 {
    label define ER81926L `n' "Actual number"  , modify
}
label define ER81926L       99 "DK; NA"  , modify

label define ER9057L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combinations; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       8 "DK"  ///
       9 "NA; refused"  ///
       0 "Inap.: not Spanish, Hispanic or Latino"

label define ER9060L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       8 "DK"  ///
       9 "NA; refused"
forvalues n = 1/51 {
    label define ER9247L `n' "Actual state (PSID State code)"  , modify
}
label define ER9247L       99 "DK; NA"  , modify
label define ER9247L        0 "Inap.:  U.S. territory or foreign country"  , modify
label define ER9249L        0 "Completed no grades of school"  , modify
forvalues n = 1/16 {
    label define ER9249L `n' "Actual number"  , modify
}
label define ER9249L       17 "At least some post-graduate work"  , modify
label define ER9249L       99 "NA; DK"  , modify

label define V1L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"

label define V10001L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V10003L `n' "Actual state (PSID State code)"  , modify
}
label define V10003L       99 "DK; NA"  , modify
label define V10003L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V1008L `n' "Actual age of Head"  , modify
}
label define V1008L       98 "Ninety-eight years or older"  , modify
label define V1008L       99 "NA"  , modify
forvalues n = 17/97 {
    label define V10419L `n' "Actual age"  , modify
}
label define V10419L       98 "98 years of age or older"  , modify
label define V10419L       99 "NA"  , modify

label define V10996L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"

label define V1101L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V1103L `n' "Actual state (PSID State code)"  , modify
}
label define V1103L       99 "DK; NA"  , modify
label define V1103L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V11055L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V11101L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V11103L `n' "Actual state (PSID State code)"  , modify
}
label define V11103L       99 "DK; NA"  , modify
label define V11103L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 16/97 {
    label define V11606L `n' "Actual age"  , modify
}
label define V11606L       98 "Ninety-eight years of age or older"  , modify
label define V11606L       99 "NA"  , modify
forvalues n = 1/96 {
    label define V117L `n' "Actual age"  , modify
}
label define V117L       97 "Ninety-seven years or older"  , modify
label define V117L       98 "DK"  , modify
label define V117L       99 "NA"  , modify

label define V11937L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V11938L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       8 "More than 2 mentions"  ///
       9 "NA; DK"  ///
       0 "Inap.: no second mention"
forvalues n = 16/93 {
    label define V1239L `n' "Actual age"  , modify
}
label define V1239L       99 "NA age"  , modify

label define V12501L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V12503L `n' "Actual state (PSID State code)"  , modify
}
label define V12503L       99 "DK; NA"  , modify
label define V12503L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V13011L `n' "Actual age"  , modify
}
label define V13011L       98 "Ninety-eight years of age or older"  , modify
label define V13011L       99 "NA"  , modify

label define V13564L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V13565L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V13701L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V13703L `n' "Actual state (PSID State code)"  , modify
}
label define V13703L       99 "DK; NA"  , modify
label define V13703L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V14114L `n' "Actual age"  , modify
}
label define V14114L       98 "Ninety-eight years of age or older"  , modify
label define V14114L       99 "NA"  , modify

label define V14611L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V14612L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V14801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V14803L `n' "Actual state (PSID State code)"  , modify
}
label define V14803L       99 "DK; NA"  , modify
label define V14803L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V1490L  ///
       1 "White"  ///
       2 "Negro"  ///
       3 "Spanish American, Puerto Rican, Mexican, Cuban"  ///
       7 "Other (Including Oriental, Pilipino)"  ///
       9 "NA"
forvalues n = 17/97 {
    label define V15130L `n' "Actual age"  , modify
}
label define V15130L       98 "Ninety-eight years of age or older"  , modify
label define V15130L       99 "NA"  , modify

label define V16085L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V16086L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V16301L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V16303L `n' "Actual state (PSID State code)"  , modify
}
label define V16303L       99 "DK; NA"  , modify
label define V16303L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 18/97 {
    label define V16631L `n' "Actual age"  , modify
}
label define V16631L       98 "Ninety-eight years of age or older"  , modify
label define V16631L       99 "NA"  , modify

label define V17482L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than 1 mention"  ///
       7 "Other Spanish"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V17483L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V17701L  ///
       2 "Release Number 2 - May 2008"  ///
       3 "Release Number 3 - December 2013"
forvalues n = 1/51 {
    label define V17703L `n' "Actual state (PSID State code)"  , modify
}
label define V17703L       99 "DK; NA"  , modify
label define V17703L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V1801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V1803L `n' "Actual state (PSID State code)"  , modify
}
label define V1803L       99 "DK; NA"  , modify
label define V1803L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V18049L `n' "Actual age"  , modify
}
label define V18049L       98 "Ninety-eight years of age or older"  , modify
label define V18049L       99 "NA"  , modify

label define V181L  ///
       1 "White"  ///
       2 "Negro"  ///
       3 "Puerto Rican, Mexican"  ///
       7 "Other (including Oriental, Pilipino)"  ///
       9 "NA"

label define V18813L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V18814L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"

label define V19001L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V19003L `n' "Actual state (PSID State code)"  , modify
}
label define V19003L       99 "DK; NA"  , modify
label define V19003L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V19349L `n' "Actual age"  , modify
}
label define V19349L       98 "Ninety-eight years of age or older"  , modify
label define V19349L       99 "NA"  , modify
forvalues n = 15/97 {
    label define V1942L `n' "Actual age"  , modify
}
label define V1942L       98 "Ninety-eight years of age or older"  , modify
label define V1942L       99 "NA, DK"  , modify

label define V20113L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V20114L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"
forvalues n = 1/16 {
    label define V20198L `n' "Actual grade of school completed"  , modify
}
label define V20198L       17 "Completed at least some postgraduate work"  , modify
label define V20198L       99 "NA; DK"  , modify
label define V20198L        0 "Inap: completed no grades of school"  , modify

label define V20301L  ///
       3 "Release number 3 - May 2008"  ///
       4 "Release number 4 - December 2013"
forvalues n = 1/51 {
    label define V20303L `n' "Actual state (PSID State code)"  , modify
}
label define V20303L       99 "DK; NA"  , modify
label define V20303L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 14/97 {
    label define V20651L `n' "Actual age"  , modify
}
label define V20651L       98 "Ninety-eight years of age or older"  , modify
label define V20651L       99 "NA"  , modify

label define V21419L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V21420L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"
forvalues n = 1/16 {
    label define V21504L `n' "Actual grade of school completed"  , modify
}
label define V21504L       17 "At least some post-graduate work"  , modify
label define V21504L       99 "NA; DK"  , modify
label define V21504L        0 "Inap: completed no grades of school"  , modify

label define V21601L  ///
       1 "Release number 1 - January 1998"  ///
       2 "Release number 2 - February 1998"  ///
       3 "Release number 3 - April 2000"  ///
       4 "Release number 4 - May 2008"
forvalues n = 1/51 {
    label define V21603L `n' "Actual state (PSID State code)"  , modify
}
label define V21603L       99 "DK; NA"  , modify
label define V21603L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V2202L  ///
       1 "White"  ///
       2 "Negro"  ///
       3 "Spanish American, Puerto Rican, Mexican, Cuban"  ///
       7 "Other (including Oriental, Filipino)"  ///
       9 "NA"
forvalues n = 14/97 {
    label define V22406L `n' "Actual age"  , modify
}
label define V22406L       98 "Ninety-eight years of age or older"  , modify
label define V22406L       99 "NA"  , modify

label define V23275L  ///
       1 "Mexican"  ///
       2 "Mexican American"  ///
       3 "Chicano"  ///
       4 "Puerto Rican"  ///
       5 "Cuban"  ///
       6 "Combination; more than one mention"  ///
       7 "Other Spanish; Hispanic; Latino"  ///
       9 "NA; DK"  ///
       0 "Inap.: is not Spanish/Hispanic"

label define V23276L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "American Indian, Aleut, Eskimo"  ///
       4 "Asian, Pacific Islander"  ///
       5 "Mentions Latino origin or descent"  ///
       6 "Mentions color other than black or white"  ///
       7 "Other"  ///
       9 "NA; DK"
forvalues n = 1/16 {
    label define V23333L `n' "Actual number"  , modify
}
label define V23333L       17 "At least some post-graduate work"  , modify
label define V23333L       99 "NA; DK"  , modify
label define V23333L        0 "Inap: completed no grades of school"  , modify

label define V2401L  ///
       2 "Release number 2 -- May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V2403L `n' "Actual state (PSID State code)"  , modify
}
label define V2403L       99 "DK; NA"  , modify
label define V2403L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V251L  ///
       0 "None"  ///
       1 "$1 - 499"  ///
       2 "$500 - 999"  ///
       3 "$1000 - 1999"  ///
       4 "$2000 - 2999"  ///
       5 "$3000 - 4999"  ///
       6 "$5000 - 7499"  ///
       7 "$7500 - 9999"  ///
       8 "$10,000 or more"  ///
       9 "NA; DK"
forvalues n = 17/96 {
    label define V2542L `n' "Actual age"  , modify
}
label define V2542L       99 "NA age"  , modify

label define V2828L  ///
       1 "White"  ///
       2 "Negro"  ///
       3 "Spanish American; Puerto Rican; Mexican; Cuban"  ///
       7 "Other (including Oriental, Filipino)"  ///
       9 "NA"

label define V3001L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V3003L `n' "Actual state (PSID State code)"  , modify
}
label define V3003L       99 "DK; NA"  , modify
label define V3003L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V3095L `n' "Actual age"  , modify
}
label define V3095L       99 "NA"  , modify

label define V3300L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V3401L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V3403L `n' "Actual state (PSID State code)"  , modify
}
label define V3403L       99 "DK; NA"  , modify
label define V3403L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/93 {
    label define V3508L `n' "Actual age"  , modify
}
label define V3508L       99 "NA; DK"  , modify

label define V3720L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V3801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V3803L `n' "Actual state (PSID State code)"  , modify
}
label define V3803L       99 "DK; NA"  , modify
label define V3803L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 16/97 {
    label define V3921L `n' "Actual age"  , modify
}
label define V3921L       98 "Ninety-eight years of age or older"  , modify
label define V3921L       99 "NA; DK age"  , modify

label define V4093L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V4204L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V4301L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V4303L `n' "Actual state (PSID State code)"  , modify
}
label define V4303L       99 "DK; NA"  , modify
label define V4303L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V441L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 16/97 {
    label define V4436L `n' "Actual age"  , modify
}
label define V4436L       98 "Ninety-eight years of age or older"  , modify
label define V4436L       99 "NA; DK"  , modify

label define V4684L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V5096L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V5201L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V5203L `n' "Actual state (PSID State code)"  , modify
}
label define V5203L       99 "DK; NA"  , modify
label define V5203L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/95 {
    label define V5350L `n' "Actual age of Head"  , modify
}
label define V5350L       99 "NA"  , modify
forvalues n = 1/51 {
    label define V537L `n' "Actual state (PSID State code)"  , modify
}
label define V537L       99 "DK; NA"  , modify
label define V537L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V5608L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V5662L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V5701L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V5703L `n' "Actual state (PSID State code)"  , modify
}
label define V5703L       99 "DK; NA"  , modify
label define V5703L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 16/96 {
    label define V5850L `n' "Actual age"  , modify
}
label define V5850L       99 "NA"  , modify
label define V6157L        0 "None"  , modify
forvalues n = 1/16 {
    label define V6157L `n' "Actual number of grades"  , modify
}
label define V6157L       17 "Seventeen or more"  , modify
label define V6157L       99 "NA; DK"  , modify

label define V6209L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V6301L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V6303L `n' "Actual state (PSID State code)"  , modify
}
label define V6303L       99 "DK; NA"  , modify
label define V6303L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V6462L `n' "Actual age"  , modify
}
label define V6462L       99 "NA"  , modify

label define V6754L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V6802L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V6901L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V6903L `n' "Actual state (PSID State code)"  , modify
}
label define V6903L       99 "DK; NA"  , modify
label define V6903L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V699L  ///
       0 "None"  ///
       1 "$1 - 499"  ///
       2 "$500 - 999"  ///
       3 "$1000 - 1999"  ///
       4 "$2000 - 2999"  ///
       5 "$3000 - 4999"  ///
       6 "$5000 - 7499"  ///
       7 "$7500 - 9999"  ///
       8 "$10,000 or more"  ///
       9 "NA; DK"
forvalues n = 16/97 {
    label define V7067L `n' "Actual age"  , modify
}
label define V7067L       98 "Ninety-eight years of age or older"  , modify
label define V7067L       99 "NA"  , modify

label define V7387L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V7447L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V7501L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V7503L `n' "Actual state (PSID State code)"  , modify
}
label define V7503L       99 "DK; NA"  , modify
label define V7503L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V7658L `n' "Actual age"  , modify
}
label define V7658L       98 "98 years of age or older"  , modify
label define V7658L       99 "NA"  , modify

label define V801L  ///
       1 "White"  ///
       2 "Negro"  ///
       3 "Puerto Rican, Mexican, Cuban"  ///
       7 "Other (including Oriental, Pilipino)"

label define V8039L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "Thirteen"  ///
      14 "Fourteen"  ///
      15 "Fifteen"  ///
      16 "Sixteen"  ///
      17 "Seventeen or more"  ///
      99 "NA; DK"

label define V8099L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V8201L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V8203L `n' "Actual state (PSID State code)"  , modify
}
label define V8203L       99 "DK; NA"  , modify
label define V8203L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 17/97 {
    label define V8352L `n' "Actual age"  , modify
}
label define V8352L       98 "Ninety-eight years of age or older"  , modify
label define V8352L       99 "NA"  , modify

label define V8663L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"

label define V8723L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label define V8801L  ///
       2 "Release number 2 - May 2008"  ///
       3 "Release number 3 - December 2013"
forvalues n = 1/51 {
    label define V8803L `n' "Actual state (PSID State code)"  , modify
}
label define V8803L       99 "DK; NA"  , modify
label define V8803L        0 "Inap.:  U.S. territory or foreign country"  , modify
forvalues n = 14/97 {
    label define V8961L `n' "Actual age"  , modify
}
label define V8961L       98 "Ninety-eight years of age or older"  , modify
label define V8961L       99 "NA"  , modify
forvalues n = 1/51 {
    label define V93L `n' "Actual state (PSID state code)"  , modify
}
label define V93L       99 "DK; NA"  , modify
label define V93L        0 "Inap.:  U.S. territory or foreign country"  , modify

label define V9349L  ///
       0 "None"  ///
       1 "One"  ///
       2 "Two"  ///
       3 "Three"  ///
       4 "Four"  ///
       5 "Five"  ///
       6 "Six"  ///
       7 "Seven"  ///
       8 "Eight"  ///
       9 "Nine"  ///
      10 "Ten"  ///
      11 "Eleven"  ///
      12 "Twelve; GED"  ///
      13 "First year of college"  ///
      14 "Second year of college, with or without Associate`=char(146)'s degree"  ///
      15 "Third year of college"  ///
      16 "Fourth year of college; college graduate"  ///
      17 "At least some postgraduate work"  ///
      99 "NA; DK"

label define V9408L  ///
       1 "White"  ///
       2 "Black"  ///
       3 "Spanish-American"  ///
       7 "Other"  ///
       9 "NA"

label values ER10001    ER10001L
label values ER11848    ER11848L
label values ER12221    ER12221L
label values ER12222    ER12222L
label values ER13001    ER13001L
label values ER13004    ER13004L
label values ER15928    ER15928L
label values ER16516    ER16516L
label values ER17001    ER17001L
label values ER17004    ER17004L
label values ER19989    ER19989L
label values ER2001     ER2001L
label values ER2007     ER2007L
label values ER20457    ER20457L
label values ER21001    ER21001L
label values ER21003    ER21003L
label values ER23426    ER23426L
label values ER24148    ER24148L
label values ER25001    ER25001L
label values ER25003    ER25003L
label values ER27392    ER27392L
label values ER27393    ER27393L
label values ER28047    ER28047L
label values ER36001    ER36001L
label values ER36003    ER36003L
label values ER3941     ER3941L
label values ER3944     ER3944L
label values ER40564    ER40564L
label values ER40565    ER40565L
label values ER41037    ER41037L
label values ER4156     ER4156L
label values ER4158     ER4158L
label values ER42001    ER42001L
label values ER42003    ER42003L
label values ER46542    ER46542L
label values ER46543    ER46543L
label values ER46981    ER46981L
label values ER47301    ER47301L
label values ER47303    ER47303L
label values ER5001     ER5001L
label values ER5006     ER5006L
label values ER51903    ER51903L
label values ER51904    ER51904L
label values ER52405    ER52405L
label values ER53001    ER53001L
label values ER53003    ER53003L
label values ER57658    ER57658L
label values ER57659    ER57659L
label values ER58223    ER58223L
label values ER60001    ER60001L
label values ER60003    ER60003L
label values ER64809    ER64809L
label values ER64810    ER64810L
label values ER65459    ER65459L
label values ER66001    ER66001L
label values ER66003    ER66003L
label values ER6811     ER6811L
label values ER6814     ER6814L
label values ER6996     ER6996L
label values ER6998     ER6998L
label values ER7001     ER7001L
label values ER7006     ER7006L
label values ER70881    ER70881L
label values ER70882    ER70882L
label values ER71538    ER71538L
label values ER72001    ER72001L
label values ER72003    ER72003L
label values ER76896    ER76896L
label values ER76897    ER76897L
label values ER77599    ER77599L
label values ER78001    ER78001L
label values ER78003    ER78003L
label values ER81143    ER81143L
label values ER81144    ER81144L
label values ER81926    ER81926L
label values ER9057     ER9057L
label values ER9060     ER9060L
label values ER9247     ER9247L
label values ER9249     ER9249L
label values V1         V1L
label values V10001     V10001L
label values V10003     V10003L
label values V1008      V1008L
label values V10419     V10419L
label values V10996     V10996L
label values V1101      V1101L
label values V1103      V1103L
label values V11055     V11055L
label values V11101     V11101L
label values V11103     V11103L
label values V11606     V11606L
label values V117       V117L
label values V11937     V11937L
label values V11938     V11938L
label values V1239      V1239L
label values V12501     V12501L
label values V12503     V12503L
label values V13011     V13011L
label values V13564     V13564L
label values V13565     V13565L
label values V13701     V13701L
label values V13703     V13703L
label values V14114     V14114L
label values V14611     V14611L
label values V14612     V14612L
label values V14801     V14801L
label values V14803     V14803L
label values V1490      V1490L
label values V15130     V15130L
label values V16085     V16085L
label values V16086     V16086L
label values V16301     V16301L
label values V16303     V16303L
label values V16631     V16631L
label values V17482     V17482L
label values V17483     V17483L
label values V17701     V17701L
label values V17703     V17703L
label values V1801      V1801L
label values V1803      V1803L
label values V18049     V18049L
label values V181       V181L
label values V18813     V18813L
label values V18814     V18814L
label values V19001     V19001L
label values V19003     V19003L
label values V19349     V19349L
label values V1942      V1942L
label values V20113     V20113L
label values V20114     V20114L
label values V20198     V20198L
label values V20301     V20301L
label values V20303     V20303L
label values V20651     V20651L
label values V21419     V21419L
label values V21420     V21420L
label values V21504     V21504L
label values V21601     V21601L
label values V21603     V21603L
label values V2202      V2202L
label values V22406     V22406L
label values V23275     V23275L
label values V23276     V23276L
label values V23333     V23333L
label values V2401      V2401L
label values V2403      V2403L
label values V251       V251L
label values V2542      V2542L
label values V2828      V2828L
label values V3001      V3001L
label values V3003      V3003L
label values V3095      V3095L
label values V3300      V3300L
label values V3401      V3401L
label values V3403      V3403L
label values V3508      V3508L
label values V3720      V3720L
label values V3801      V3801L
label values V3803      V3803L
label values V3921      V3921L
label values V4093      V4093L
label values V4204      V4204L
label values V4301      V4301L
label values V4303      V4303L
label values V441       V441L
label values V4436      V4436L
label values V4684      V4684L
label values V5096      V5096L
label values V5201      V5201L
label values V5203      V5203L
label values V5350      V5350L
label values V537       V537L
label values V5608      V5608L
label values V5662      V5662L
label values V5701      V5701L
label values V5703      V5703L
label values V5850      V5850L
label values V6157      V6157L
label values V6209      V6209L
label values V6301      V6301L
label values V6303      V6303L
label values V6462      V6462L
label values V6754      V6754L
label values V6802      V6802L
label values V6901      V6901L
label values V6903      V6903L
label values V699       V699L
label values V7067      V7067L
label values V7387      V7387L
label values V7447      V7447L
label values V7501      V7501L
label values V7503      V7503L
label values V7658      V7658L
label values V801       V801L
label values V8039      V8039L
label values V8099      V8099L
label values V8201      V8201L
label values V8203      V8203L
label values V8352      V8352L
label values V8663      V8663L
label values V8723      V8723L
label values V8801      V8801L
label values V8803      V8803L
label values V8961      V8961L
label values V93        V93L
label values V9349      V9349L
label values V9408      V9408L
