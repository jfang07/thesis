
label define ER30000L  ///
       1 "Release number 1, June 2023"  ///
       2 "Release number 2, March 2024"  ///
       3 "Release number 3, August 2024"

label define ER30003L  ///
       1 "Head"  ///
       2 `"Wife/"Wife""'  ///
       3 "Son or daughter"  ///
       4 "Brother or sister"  ///
       5 "Father or mother"  ///
       6 "Grandchild, niece, nephew, other relatives under 18"  ///
       7 "Other, including in-laws, other adult relatives"  ///
       8 "Husband or Wife of Head who moved out or died in the year prior to the 1968 interview"  ///
       9 "NA"  ///
       0 "Individual from core sample who was born or moved in after the 1968 interview; individual from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308)"

label define ER30005L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1968; born or moved in after the 1968 interview or individual from Immigrant or Latino samples (ER30003=0)"
forvalues n = 1/20 {
    label define ER30021L `n' "Individuals in the family at the time of the 1969 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30021L `n' "Individuals in institutions at the time of the 1969 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30021L `n' "Individuals who moved out of the FU or out of institutions between the 1968 and 1969 interviews but who were not included in another responding FU for 1969. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30021L `n' "Individuals living in 1968 but who died by the time of the 1969 interview"  , modify
}
label define ER30021L        0 "Born or moved in after the 1969 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse for 1969 or mover-out nonresponse in 1968 (ER30020=0)"  , modify

label define ER30022L  ///
       1 "Head in 1969; 1968 Head who was mover-out nonresponse by the time of the 1969 interview"  ///
       2 "Wife in 1969; 1968 Wife who was mover-out nonresponse by the time of the 1969 interview"  ///
       3 "Son or daughter, including stepchildren and foster children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative, including in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1969 interview (ER30020>0 and ER30021=0); main family nonresponse for 1969 or mover-out nonresponse from 1968 (ER30020=0)"

label define ER30024L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1969; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1969 interview (ER30020>0 and ER30021=0); main family nonresponse for 1969 or mover-out nonresponse from 1968 (ER30020=0)"
forvalues n = 1/20 {
    label define ER30044L `n' "Individuals in the family at the time of the 1970 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30044L `n' "Individuals in institutions at the time of the 1970 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30044L `n' "Individuals who moved out of the FU or out of institutions between the 1969 and 1970 interviews but who were not included in another responding FU for 1970. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30044L `n' "Individuals who were living in 1969 but who died by the time of the 1970 interview"  , modify
}
label define ER30044L        0 "Inap.:  born or moved in after the 1970 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1970 or mover-out nonresponse by 1969 (ER30043=0)"  , modify

label define ER30045L  ///
       1 "Head in 1970; 1969 Head who was mover-out nonresponse by the time of the 1970 interview"  ///
       2 "Wife in 1970; 1969 Wife who was mover-out nonresponse by the time of the 1970 interview"  ///
       3 "Child, stepchild"  ///
       4 "Sibling"  ///
       5 "Parent"  ///
       6 "Grandchild, great-grandchild"  ///
       7 "In-law or other relative"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1970 interview (ER30043>0 and ER30044=0); main family nonresponse by 1970 or mover-out nonresponse by 1969 (ER30043=0)"

label define ER30047L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1970; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1970 interview (ER30043>0 and ER30044=0); main family nonresponse by 1970 or mover-out nonresponse in 1969 (ER30043=0)"
forvalues n = 1/20 {
    label define ER30068L `n' "Individuals in the family at the time of the 1971 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30068L `n' "Individuals in institutions at the time of the 1971 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30068L `n' "Individuals who moved out of the FU or out of institutions between the 1970 and 1971 interviews but who were not included in another responding FU for 1971. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30068L `n' "Individuals who were living in 1970 but died by the time of the 1971 interview"  , modify
}
label define ER30068L        0 "Inap.:  born or moved in after the 1971 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1971 or mover-out nonresponse by 1970 (ER30067=0)"  , modify

label define ER30069L  ///
       1 "Head in 1971; 1970 Head who was mover-out nonresponse by the time of the 1971 interview"  ///
       2 "Wife in 1971; 1970 Wife who was mover-out nonresponse by the time of the 1971 interview"  ///
       3 "Child, stepchild"  ///
       4 "Sibling"  ///
       5 "Parent"  ///
       6 "Grandchild, great-grandchild"  ///
       7 "In-law or other relative"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of family)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1971 interview (ER30067>0 and ER30068=0); main family nonresponse by 1971 or mover-out nonresponse by 1970 (ER30067=0)"

label define ER30071L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1971; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1971 interview (ER30067>0 and ER30068=0); main family nonresponse by 1971 or mover-out nonresponse by 1970 (ER30067=0)"
forvalues n = 1/20 {
    label define ER30092L `n' "Individuals in the family at the time of the 1972 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30092L `n' "Individuals in institutions at the time of the 1972 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30092L `n' "Individuals who moved out of the FU or out of institutions between the 1971 and 1972 interviews but who were not included in another responding FU for 1972. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30092L `n' "Individuals who were living in 1971 but who died by the time of the 1972 interview"  , modify
}
label define ER30092L        0 "Inap.:  born or moved in after the 1972 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1972 or mover-out nonresponse by 1971 (ER30091=0)"  , modify

label define ER30093L  ///
       1 "Head in 1972; 1971 Head who was mover-out nonresponse by the time of the 1972 interview"  ///
       2 "Wife in 1972; 1971 Wife who was mover-out nonresponse by the time of the 1972 interview"  ///
       3 "Child, stepchild"  ///
       4 "Sibling"  ///
       5 "Parent"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of the family)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1972 interview (ER30091>0 and ER30092=0); main family nonresponse by 1972 or mover-out nonresponse by 1971 (ER30091=0)"

label define ER30095L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1972; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1972 interview (ER30091>0 and ER30092=0); main family nonresponse by 1972 or mover-out nonresponse by 1971 (ER30091=0)"
forvalues n = 1/20 {
    label define ER30118L `n' "Individuals in FU at the time of the 1973 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30118L `n' "Individuals in institutions at the time of the 1973 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30118L `n' "Individuals who moved out of the FU or out of institutions between the 1972 and 1973 interviews but who were not included in another responding FU for 1973. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30118L `n' "Individuals who were living in 1972 but who died by the time of the 1973 interview"  , modify
}
label define ER30118L        0 "Inap.:  born or moved in after the 1973 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1973 or mover-out nonresponse by 1972 (ER30117=0)"  , modify

label define ER30119L  ///
       1 "Head in 1973; 1972 Head who was mover-out nonresponse by the time of the 1973 interview"  ///
       2 "Wife in 1973; 1972 Wife who was mover-out nonresponse by the time of the 1973 interview"  ///
       3 "Son or daughter; includes stepchildren or adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1973 interview (ER30117>0 and ER30118=0); main family nonresponse by 1973 or mover-out nonresponse by 1972 (ER30117=0)"

label define ER30121L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1973; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1973 interview (ER30117>0 and ER30118=0); main family nonresponse by 1973 or mover-out nonresponse by 1972 (ER30117=0)"
forvalues n = 1/20 {
    label define ER30139L `n' "Individuals in FU at the time of 1974 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30139L `n' "Individuals in institutions at the time of the 1974 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30139L `n' "Individuals who moved out of the FU or out of institutions between the 1973 and 1974 interviews but who were not included in another responding FU for 1974. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30139L `n' "Individuals who were living in 1973 but who died by the time of the 1974 interview"  , modify
}
label define ER30139L        0 "Inap.:  born or moved in after the 1974 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1974 or mover-out nonresponse by 1973 (ER30138=0)"  , modify

label define ER30140L  ///
       1 "Head in 1974; 1973 Head who was mover-out nonresponse by the time of the 1974 interview"  ///
       2 "Wife in 1974; 1973 Wife who was mover-out nonresponse by the time of the 1974 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1974 interview (ER30138>0 and ER30139=0); main family nonresponse by 1974 or mover-out nonresponse by 1973 (ER30138=0)"

label define ER30142L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1974; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1974 interview (ER30138>0 and ER30139=0); main family nonresponse by 1974 or mover-out nonresponse by 1973 (ER30138=0)"
forvalues n = 1/20 {
    label define ER30161L `n' "Individuals in FU at the time of the 1975 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30161L `n' "Individuals in institutions at the time of the 1975 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30161L `n' "Individuals who moved out of the FU or out of institutions between the 1974 and 1975 interviews but who were not included in another responding FU for 1975. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30161L `n' "Individuals who were living in 1974 but who died by the time of the 1975 interview"  , modify
}
label define ER30161L        0 "Inap.:  born or moved in after the 1975 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1975 or mover-out nonresponse by 1974 (ER30160=0)"  , modify

label define ER30162L  ///
       1 "Head in 1975; 1974 Head who was mover-out nonresponse by the time of the 1975 interview"  ///
       2 "Wife in 1975; 1974 Wife who was mover-out nonresponse by the time of the 1975 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1975 interview (ER30160>0 and ER30161=0); main family nonresponse by 1975 or mover-out nonresponse by 1974 (ER30160=0)"

label define ER30164L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1975; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1975 interview (ER30160>0 and ER30161=0); main family nonresponse by 1975 or mover-out nonresponse by 1974 (ER30160=0)"
forvalues n = 1/20 {
    label define ER30189L `n' "Individuals in FU at the time of the 1976 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30189L `n' "Individuals in institutions at the time of the 1976 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30189L `n' "Individuals who moved out of the FU or out of institutions between the 1975 and 1976 interviews but were not included in another responding FU for 1976. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30189L `n' "Individuals who were living in 1975 but who died by the time of the 1976 interview"  , modify
}
label define ER30189L        0 "Inap.:  born or moved in after the 1976 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1976 or mover-out nonresponse by 1975 (ER30188=0)"  , modify

label define ER30190L  ///
       1 "Head in 1976; 1975 Head who was mover-out nonresponse by the time of the 1976 interview"  ///
       2 "Wife in 1976; 1975 Wife who was mover-out nonresponse by the time of the 1976 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1976 interview (ER30188>0 and ER30189=0); main family nonresponse by 1976 or mover-out nonresponse by 1975 (ER30188=0)"

label define ER30192L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU in 1976; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1976 interview (ER30188>0 and ER30189=0); main family nonresponse by 1976 or mover-out nonresponse by 1975 (ER30188=0)"
forvalues n = 1/20 {
    label define ER30218L `n' "Individuals in FU at the time of the 1977 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30218L `n' "Individuals in institutions at the time of the 1977 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30218L `n' "Individuals who moved out of the FU or out of institutions between the 1976 and 1977 interviews but who were not included in another responding FU for 1977. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30218L `n' "Individuals who were living in 1976 but who died by the time of the 1977 interview"  , modify
}
label define ER30218L        0 "Inap.:  born or moved in after the 1977 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1977 or mover-out nonresponse by 1976 (ER30217=0)"  , modify

label define ER30219L  ///
       1 "Head in 1977; 1976 Head who was mover-out nonresponse by the time of the 1977 interview"  ///
       2 "Wife in 1977; 1976 Wife who was mover-out nonresponse by the time of the 1977 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1977 interview (ER30217>0 and ER30218=0); main family nonresponse by 1977 or mover-out nonresponse by 1976 (ER30217=0)"

label define ER30221L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       5 "Spouse in couple numbered 5"  ///
       0 "Inap.:  not married; spouse not in FU in 1977; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1977 interview (ER30217>0 and ER30218=0); main family nonresponse by 1977 or mover-out nonresponse by 1976 (ER30217=0)"
forvalues n = 1/20 {
    label define ER30247L `n' "Individuals in FU at the time of the 1978 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30247L `n' "Individuals in institutions at the time of the 1978 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30247L `n' "Individuals who moved out of the FU or out of institutions between the 1977 and 1978 interviews but who were not included in another responding FU for 1978. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30247L `n' "Individuals who were living in 1977 but who died by the time of the 1978 interview"  , modify
}
label define ER30247L        0 "Inap.:  born or moved in after the 1978 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1978 or mover-out nonresponse by 1977 (ER30246=0)"  , modify

label define ER30248L  ///
       1 "Head in 1978; 1977 Head who was mover-out nonresponse by the time of the 1978 interview"  ///
       2 "Wife in 1978; 1977 Wife who was mover-out nonresponse by the time of the 1978 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1978 interview (ER30246>0 and ER30247=0); main family nonresponse by 1978 or mover-out nonresponse by 1977 (ER30246=0)"

label define ER30250L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       5 "Spouse in couple numbered 5"  ///
       0 "Inap.:  not married; spouse was not in FU at the time of the 1978 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1978 interview (ER30246>0 and ER30247=0); main family nonresponse by 1978 or mover-out nonresponse by 1977 (ER30246=0)"
forvalues n = 1/20 {
    label define ER30284L `n' "Individuals in the family at the time of the 1979 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30284L `n' "Individuals in institutions at the time of the 1979 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30284L `n' "Individuals who moved out of the FU or out of institutions between the 1978 and 1979 interviews but who were not included in another responding FU for 1979. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30284L `n' "Individuals who were living in 1978 but who died by the time of the 1978 interview"  , modify
}
label define ER30284L        0 "Inap.:  born or moved in after the 1979 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1979 or mover-out nonresponse by 1978 (ER30283=0)"  , modify

label define ER30285L  ///
       1 "Head in 1979; 1978 Head who was mover-out nonresponse by the time of the 1979 interview"  ///
       2 "Wife in 1979; 1978 Wife who was mover-out nonresponse by the time of the 1979 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative, includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1979 interview (ER30283>0 and ER30284=0); main family nonresponse by 1979 or mover-out nonresponse by 1978 (ER30283=0)"

label define ER30287L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU at the time of the 1979 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1979 interview (ER30283>0 and ER30284=0); main family nonresponse by 1979 or mover-out nonresponse by 1978 (ER30283=0)"

label define ER30293L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other; mover-out nonresponse from 1979 only if deceased; NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); in institution in both 1978 and 1979 (ER30284=51-59 and ER30288=0); born or moved in after the 1979 interview (ER30283>0 and ER30284=0); main family nonresponse by 1979 or mover-out nonresponse by 1978 (ER30283=0); not a person aged 16 or older (ER30286=001-015)"
forvalues n = 1/20 {
    label define ER30314L `n' "Individuals in the family at the time of the 1980 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30314L `n' "Individuals in institutions at the time of the 1980 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30314L `n' "Individuals who moved out of the FU or out of institutions between the 1979 and 1980 interviews but who were not included in another responding FU for 1980. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30314L `n' "Individuals who were living in 1979 but who died by the time of the 1980 interview"  , modify
}
label define ER30314L        0 "Inap.:  born or moved in after the 1980 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1980 or mover-out nonresponse by 1979 (ER30313=0)"  , modify

label define ER30315L  ///
       1 "Head in 1980; 1979 Head who was mover-out nonresponse by the time of the 1980 interview"  ///
       2 "Wife in 1980; 1979 Wife who was mover-out nonresponse by the time of the 1980 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Mother or father of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1980 interview (ER30313>0 and ER30314=0); main family nonresponse by 1980 or mover-out nonresponse by 1979 (ER30313=0)"

label define ER30317L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU at the time of the 1980 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1980 interview (ER30313>0 and ER30314=0); main family nonresponse by 1980 or mover-out nonresponse by 1979 (ER30313=0)"

label define ER30323L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1980 interview (ER30313>0 and ER30314=0); main family nonresponse by 1980 or mover-out nonresponse by 1979 (ER30313=0); mover-out nonresponse for 1980 only if deceased (ER30314=81-89); in an institution in both 1979 and 1980 (ER30314=51-59 and ER30318=0); not a person aged 16 or older (ER30316=001-015)"
forvalues n = 1/20 {
    label define ER30344L `n' "Individuals in the family at the time of the 1981 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30344L `n' "Individuals in institutions at the time of the 1981 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30344L `n' "Individuals who moved out of the FU or out of institutions between the 1980 and 1981 interviews but who were not included in another responding FU for 1981. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30344L `n' "Individuals who were living in 1980 but who died by the time of the 1981 interview"  , modify
}
label define ER30344L        0 "Inap.:  born or moved in after the 1981 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1981 or splitoff nonresponse by 1980 (ER30343=0)"  , modify

label define ER30345L  ///
       1 "Head in 1981; 1980 Head who was mover-out nonresponse by the time of the 1981 interview"  ///
       2 "Wife in 1981; 1980 Wife who was mover-out nonresponse by the time of the 1981 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1981 interview (ER30343>0 and ER30344=0); main family nonresponse by 1981 or mover-out nonresponse by 1980 (ER30343=0)"

label define ER30347L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU at the time of the 1981 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1981 interview (ER30343>0 and ER30344=0); main family nonresponse by 1981 or mover-out nonresponse by 1980 (ER30343=0)"

label define ER30353L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1981 interview (ER30343>0 and ER30344=0); main family nonresponse by 1981 or mover-out nonresponse by 1980 (ER30343=0); mover-out nonresponse for 1981 only if deceased (ER30344=81-89); in an institution in both 1980 and 1981 (ER30344=51-59 and ER30348=0); not a person aged 16 or older (ER30346=001-015)"
forvalues n = 1/20 {
    label define ER30374L `n' "Individuals in the family at the time of the 1982 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30374L `n' "Individuals in institutions at the time of the 1982 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30374L `n' "Individuals who moved out of the FU or out of institutions between the 1981 and 1982 interviews but who were not included in another responding FU for 1982. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30374L `n' "Individuals who were living in 1981 but died by the time of the 1982 interview"  , modify
}
label define ER30374L        0 "Inap.:  born or moved in after the 1982 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1982 or mover-out nonresponse by 1981 (ER30373=0)"  , modify

label define ER30375L  ///
       1 "Head in 1982; 1981 Head who was mover-out nonresponse by the time of the 1982 interview"  ///
       2 "Wife in 1982; 1981 Wife who was mover-out nonresponse by the time of the 1982 interview"  ///
       3 "Son or daughter; includes stepchildren and adopted children"  ///
       4 "Brother or sister of Head"  ///
       5 "Father or mother of Head"  ///
       6 "Grandchild or great-grandchild"  ///
       7 "Other relative; includes in-laws"  ///
       8 "Nonrelative"  ///
       9 "Husband of Head (i.e., Wife was Head of FU)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1982 interview (ER30373>0 and ER30374=0); main family nonresponse by 1982 or mover-out nonresponse by 1981 (ER30373=0)"

label define ER30377L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married; spouse was not in FU at the time of the 1982 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1982 interview (ER30373>0 and ER30374=0); main family nonresponse by 1982 or mover-out nonresponse by 1981 (ER30373=0)"

label define ER30382L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1982 interview (ER30373>0 and ER30374=0); main family nonresponse by 1982 or mover-out nonresponse by 1981 (ER30373=0); mover-out nonresponse for 1982 only if deceased (ER30374=81-89); in an institution in both 1981 and 1982 (ER30374=51-59 and ER30378=0); not a person aged 16 or older (ER30376=001-015)"
forvalues n = 1/20 {
    label define ER30400L `n' "Individuals in the family at the time of the 1983 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30400L `n' "Individuals in institutions at the time of the 1983 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30400L `n' "Individuals who moved out of the FU or out of institutions between the 1982 and 1983 interviews but who were not included in another responding FU for 1983. All such individuals were nonresponse."  , modify
}
forvalues n = 81/89 {
    label define ER30400L `n' "Individuals who were living in 1982 but died by the time of the 1983 interview"  , modify
}
label define ER30400L        0 "Inap.:  born or moved in after the 1983 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1983 or mover-out nonresponse by 1982 (ER30399=0)"  , modify

label define ER30401L  ///
      10 "Head in 1983; 1982 Head who was mover-out nonresponse by the time of the 1983 interview"  ///
      20 "Legal Wife in 1983; 1982 Wife who was mover-out nonresponse by the time of the 1983 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1981 family, since consecutive interviews may be taken less or more than twelve months apart; 1982 "Wife" who was mover-out nonresponse by the time of the 1983 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20),  but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1983 interview (ER30399>0 and ER30400=0); main family nonresponse by 1983 or mover-out nonresponse by 1982 (ER30399=0)"

label define ER30405L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1983 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1983 interview (ER30399>0 and ER30400=0); main family nonresponse by 1983 or mover-out nonresponse by 1982 (ER30399=0)"

label define ER30411L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1983 interview (ER30399>0 and ER30400=0); main family nonresponse by 1983 or mover-out nonresponse by 1982 (ER30399=0); mover-out nonresponse for 1983 only if deceased (ER30400=81-89); in an institution in both 1982 and 1983 (ER30400=51-59 and ER30406=0); not a person aged 16 or older (ER30402=001-015)"
forvalues n = 1/20 {
    label define ER30430L `n' "Individuals in the family at the time of the 1984 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30430L `n' "Individuals in institutions at the time of the 1984 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30430L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1983 and 1984 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30430L `n' "Individuals who were living in 1983 but died by the time of the 1984 interview"  , modify
}
label define ER30430L        0 "Inap.:  born or moved in after the 1984 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1984 or mover-out nonresponse by 1983 (ER30429=0)"  , modify

label define ER30431L  ///
      10 "Head in 1984; 1983 Head who was mover-out nonresponse by the time of the 1984 interview"  ///
      20 "Legal Wife in 1984; 1983 Wife who was mover-out nonresponse by the time of the 1984 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1982 family, since consecutive interviews may be taken less or more than twelve months apart; 1983 "Wife" who was mover-out nonresponse by the time of the 1984 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1984 interview (ER30429>0 and ER30430=0); main family nonresponse by 1984 or mover-out nonresponse by 1983 (ER30429=0)"

label define ER30435L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1984 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1984 interview (ER30429>0 and ER30430=0); main family nonresponse by 1984 or mover-out nonresponse by 1983 (ER30429=0)"

label define ER30441L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1984 interview (ER30429>0 and ER30430=0); main family nonresponse by 1984 or mover-out nonresponse by 1983 (ER30429=0); mover-out nonresponse for 1984 only if deceased (ER30430=81-89); in an institution in both 1983 and 1984 (ER30430=51-59 and ER30436=0); not a person aged 16 or older (ER30432=001-015)"
forvalues n = 1/20 {
    label define ER30464L `n' "Individuals in the family at the time of the 1985 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30464L `n' "Individuals in institutions at the time of the 1985 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30464L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1984 and 1985 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30464L `n' "Individuals who were living in 1984 but died by the time of the 1985 interview"  , modify
}
label define ER30464L        0 "Inap.:  born or moved in after the 1985 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1985 or mover-out nonresponse by 1984 (ER30463=0)"  , modify

label define ER30465L  ///
      10 "Head in 1985; 1984 Head who was mover-out nonresponse by the time of the 1985 interview"  ///
      20 "Legal Wife in 1985; 1984 Wife who was mover-out nonresponse by the time of the 1985 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1983 family, since consecutive interviews may be taken less or more than twelve months apart; 1984 "Wife" who was mover-out nonresponse by the time of the 1985 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1985 interview (ER30463>0 and ER30464=0); main family nonresponse by 1985 or mover-out nonresponse by 1984 (ER30463=0)"

label define ER30469L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1985 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1985 interview (ER30463>0 and ER30464=0); main family nonresponse by 1985 or mover-out nonresponse by 1984 (ER30463=0)"

label define ER30474L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1985 interview (ER30463>0 and ER30464=0); main family nonresponse by 1985 or mover-out nonresponse by 1984 (ER30463=0); mover-out nonresponse for 1985 only if deceased (ER30464=81-89); in an institution in both 1984 and 1985 (ER30464=51-59 and ER30470=0); not a person aged 16 or older (ER30466=001-015)"
forvalues n = 1/20 {
    label define ER30499L `n' "Individuals in the family at the time of the 1986 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30499L `n' "Individuals in institutions at the time of the 1986 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30499L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1985 and 1986 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30499L `n' "Individuals who were living in 1985 but died by the time of the 1986 interview"  , modify
}
label define ER30499L        0 "Inap.:  born or moved in after the 1986 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1986 or mover-out nonresponse by 1985 (ER30498=0)"  , modify

label define ER30500L  ///
      10 "Head in 1986; 1985 Head who was mover-out nonresponse by the time of the 1986 interview"  ///
      20 "Legal Wife in 1986; 1985 Wife who was mover-out nonresponse by the time of the 1986 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1985 family, since consecutive interviews may be taken less or more than twelve months apart; 1985 "Wife" who was mover-out nonresponse by the time of the 1986 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1986 interview (ER30498>0 and ER30499=0); main family nonresponse by 1986 or mover-out nonresponse by 1985 (ER30498=0)"

label define ER30504L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1986 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1986 interview (ER30498>0 and ER30499=0); main family nonresponse by 1986 or mover-out nonresponse by 1985 (ER30498=0)"

label define ER30509L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1986 interview (ER30498>0 and ER30499=0); main family nonresponse by 1986 or mover-out nonresponse by 1985 (ER30498=0); mover-out nonresponse for 1986 only if deceased (ER30499=81-89); in an institution in both 1985 and 1986 (ER30499=51-59 and ER30505=0); not a person aged 16 or older (ER30501=001-015)"
forvalues n = 1/20 {
    label define ER30536L `n' "Individuals in the family at the time of the 1987 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30536L `n' "Individuals in institutions at the time of the 1987 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30536L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1986 and 1987 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30536L `n' "Individuals who were living in 1986 but died by the time of the 1987 interview"  , modify
}
label define ER30536L        0 "Inap.:  born or moved in after the 1987 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1987 or mover-out nonresponse by 1986 (ER30535=0)"  , modify

label define ER30537L  ///
      10 "Head in 1987; 1986 Head who was mover-out nonresponse by the time of the 1987 interview"  ///
      20 "Legal Wife in 1987; 1986 Wife who was mover-out nonresponse by the time of the 1987 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1986 family, since consecutive interviews may be taken less or more than twelve months apart; 1986 "Wife" who was mover-out nonresponse by the time of the 1987 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1987 interview (ER30535>0 and ER30536=0); main family nonresponse by 1987 or mover-out nonresponse by 1986 (ER30535=0)"

label define ER30541L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1987 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1987 interview (ER30535>0 and ER30536=0); main family nonresponse by 1987 or mover-out nonresponse by 1986 (ER30535=0)"

label define ER30545L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1987 interview (ER30535>0 and ER30536=0); main family nonresponse by 1987 or mover-out nonresponse by 1986 (ER30535=0); mover-out nonresponse for 1987 only if deceased (ER30536=81-89); in an institution in both 1986 and 1987 (ER30536=51-59 and ER30542=0); not a person aged 16 or older (ER30538=001-015)"
forvalues n = 1/20 {
    label define ER30571L `n' "Individuals in the family at the time of the 1988 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30571L `n' "Individuals in institutions at the time of the 1988 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30571L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1987 and 1988 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30571L `n' "Individuals who were living in 1987 but died by the time of the 1988 interview"  , modify
}
label define ER30571L        0 "Inap.:  born or moved in after the 1988 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1988 or mover-out nonresponse by 1987 (ER30570=0)"  , modify

label define ER30572L  ///
      10 "Head in 1988; 1987 Head who was mover-out nonresponse by the time of the 1988 interview"  ///
      20 "Legal Wife in 1988; 1987 Wife who was mover-out nonresponse by the time of the 1988 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1987 family, since consecutive interviews may be taken less or more than twelve months apart; 1987 "Wife" who was mover-out nonresponse by the time of the 1988 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1988 interview (ER30570>0 and ER30571=0); main family nonresponse by 1988 or mover-out nonresponse by 1987 (ER30570=0)"

label define ER30576L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1988 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1988 interview (ER30570>0 and ER30571=0); main family nonresponse by 1988 or mover-out nonresponse by 1987 (ER30570=0)"

label define ER30580L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1988 or mover-out nonresponse by 1987 (ER30570=0); born or moved in after the 1988 interview (ER30570>0 and ER30571=0); mover-out nonresponse for 1988 only if deceased (ER30571=81-89); in an institution in both 1987 and 1988 (ER30571=51-59 and ER30577=0); not a person aged 16 or older (ER30573=001-015)"
forvalues n = 1/20 {
    label define ER30607L `n' "Individuals in the family at the time of the 1989 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30607L `n' "Individuals in institutions at the time of the 1989 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30607L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1988 and 1989 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30607L `n' "Individuals who were living in 1988 but died by the time of the 1989 interview"  , modify
}
label define ER30607L        0 "Inap.:  born or moved in after the 1989 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1989 or mover-out nonresponse by 1988 (ER30606=0)"  , modify

label define ER30608L  ///
      10 "Head in 1989; 1988 Head who was mover-out nonresponse by the time of the 1989 interview"  ///
      20 "Legal Wife in 1989; 1988 Wife who was mover-out nonresponse by the time of the 1989 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1988 family, since consecutive interviews may be taken less or more than twelve months apart; 1988 "Wife" who was mover-out nonresponse by the time of the 1989 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1989 interview (ER30606>0 and ER30607=0); main family nonresponse by 1989 or mover-out nonresponse by 1988 (ER30606=0)"

label define ER30612L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1989 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1989 interview (ER30606>0 and ER30607=0); main family nonresponse by 1989 or mover-out nonresponse by 1988 (ER30606=0)"

label define ER30616L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); born or moved in after the 1989 interview (ER30606>0 and ER30607=0); main family nonresponse by 1989 or mover-out nonresponse by 1988 (ER30606=0); mover-out nonresponse for 1989 only if deceased (ER30607=81-89); in an institution in both 1988 and 1989 (ER30607=51-59 and ER30613=0); not a person aged 16 or older (ER30609=001-015)"
forvalues n = 1/20 {
    label define ER30643L `n' "Individuals in the family at the time of the 1990 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30643L `n' "Individuals in institutions at the time of the 1990 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30643L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1989 and 1990 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30643L `n' "Individuals who were living in 1989 but died by the time of the 1990 interview"  , modify
}
label define ER30643L        0 "Inap.:  born or moved in after the 1990 interview; from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1990 or mover-out nonresponse by 1989 (ER30642=0)"  , modify

label define ER30644L  ///
      10 "Head in 1990; 1989 Head who was mover-out nonresponse by the time of the 1990 interview"  ///
      20 "Legal Wife in 1990; 1989 Wife who was mover-out nonresponse by the time of the 1990 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1989 family, since consecutive interviews may be taken less or more than twelve months apart; 1989 "Wife" who was mover-out nonresponse by the time of the 1990 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1990 or mover-out nonresponse by 1989 (ER30642=0); born or moved in after the 1990 interview (ER30642>0 and ER30643=0)"

label define ER30648L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1990 interview; from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1990 or mover-out nonresponse by 1989 (ER30642=0); born or moved in after the 1990 interview (ER30642>0 and ER30643=0)"

label define ER30653L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1990 or mover-out nonresponse by 1989 (ER30642=0); born or moved in after the 1990 interview (ER30642>0 and ER30643=0); mover-out nonresponse for 1990 only if deceased (ER30643=81-89); in an institution in both 1989 and 1990 (ER30643=51-59 and ER30649=0); not a person aged 16 or older (ER30645=001-015)"
forvalues n = 1/20 {
    label define ER30690L `n' "Individuals in the family at the time of the 1991 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30690L `n' "Individuals in institutions at the time of the 1991 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30690L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1990 and 1991 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30690L `n' "Individuals who were living in 1990 but died by the time of the 1991 interview"  , modify
}
label define ER30690L        0 "Inap.:  born or moved in after the 1991 interview; from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1991 or mover-out nonresponse by 1990 (ER30689=0)"  , modify

label define ER30691L  ///
      10 "Head in 1991; 1990 Head who was mover-out nonresponse by the time of the 1991 interview"  ///
      20 "Legal Wife in 1991; 1990 Wife who was mover-out nonresponse by the time of the 1991 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1990 family, since consecutive interviews may be taken less or more than twelve months apart; 1990 "Wife" who was mover-out nonresponse by the time of the 1991 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1991 or mover-out nonresponse by 1990 (ER30689=0); born or moved in after the 1991 interview (ER30689>0 and ER30690=0)"

label define ER30695L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1991 interview; from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1991 or mover-out nonresponse by 1990 (ER30689=0); born or moved in after the 1991 interview (ER30689>0 and ER30690=0)"

label define ER30699L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino recontact sample (ER30001=3001-3511,4001-4851, 9044-9308); main family nonresponse by 1991 or mover-out nonresponse by 1990 (ER30689=0); born or moved in after the 1991 interview (ER30689>0 and ER30690=0); mover-out nonresponse for 1991 only if deceased (ER30690=81-89); in an institution in both 1990 and 1991 (ER30690=51-59 and ER30696=0); not a person aged 16 or older (ER30692=001-015)"
forvalues n = 1/20 {
    label define ER30734L `n' "Individuals in the family at the time of the 1992 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30734L `n' "Individuals in institutions at the time of the 1992 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30734L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1991 and 1992 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30734L `n' "Individuals who were living in 1991 but died by the time of the 1992 interview"  , modify
}
label define ER30734L        0 "Inap.:  born or moved in after the 1992 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1992 or mover-out nonresponse by 1991 (ER30733=0)"  , modify

label define ER30735L  ///
      10 "Head in 1992; 1991 Head who was mover-out nonresponse by the time of the 1992 interview"  ///
      20 "Legal Wife in 1992; 1991 Wife who was mover-out nonresponse by the time of the 1992 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1991 family, since consecutive interviews may be taken less or more than twelve months apart; 1991 "Wife" who was mover-out nonresponse by the time of the 1992 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1992 or mover-out nonresponse by 1991 (ER30733=0); born or moved in after the 1992 interview (ER30733>0 and ER30734=0)"

label define ER30739L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1992 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1992 or mover-out nonresponse by 1991 (ER30733=0); born or moved in after the 1992 interview (ER30733>0 and ER30734=0)"

label define ER30744L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1992 or mover-out nonresponse by 1991 (ER30733=0); mover-out nonresponse for 1992 only if deceased (ER30734=81-89); in an institution in both 1991 and 1992 (ER30734=51-59 and ER30740=0); not a person aged 16 or older (ER30736=001-015); born or moved in after the 1992 interview (ER30733>0 and ER30734=0)"
forvalues n = 1/20 {
    label define ER30807L `n' "Individuals in the family at the time of the 1993 interview"  , modify
}
forvalues n = 51/59 {
    label define ER30807L `n' "Individuals in institutions at the time of the 1993 interview"  , modify
}
forvalues n = 71/80 {
    label define ER30807L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1992 and 1993 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER30807L `n' "Individuals who were living in 1992 but died by the time of the 1993 interview"  , modify
}
label define ER30807L        0 "Inap.:  born or moved in after the 1993 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1993 or mover-out nonresponse by 1992 (ER30806=0)"  , modify

label define ER30808L  ///
      10 "Head in 1993; 1992 Head who was mover-out nonresponse by the time of the 1993 interview"  ///
      20 "Legal Wife in 1993; 1992 Wife who was mover-out nonresponse by the time of the 1993 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1992 family, since consecutive interviews may be taken less or more than twelve months apart; 1992 "Wife" who was mover-out nonresponse by the time of the 1993 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1993 or mover-out nonresponse by 1992 (ER30806=0); born or moved in after the 1993 interview (ER30806>0 and ER30807=0)"

label define ER30812L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1993 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1993 or mover-out nonresponse by 1992 (ER30806=0); born or moved in after the 1993 interview (ER30806>0 and ER30807=0)"

label define ER30816L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1993 or mover-out nonresponse by 1992 (ER30806=0); born or moved in after the 1993 interview (ER30806>0 and ER30807=0); mover-out nonresponse for 1993 only if deceased (ER30807=81-89); in an institution in both 1992 and 1993 (ER30807=51-59 and ER30813=0); not a person aged 16 or older (ER30809=001-015)"

label define ER32000L  ///
       1 "Male"  ///
       2 "Female"  ///
       9 "NA"

label define ER32006L  ///
       0 "This individual is nonsample and not part of the elderly group (ER30002=170-229 and ER30609<64 and ER30645<64 and ER30692<64 and ER30736<64 and ER30809<64 and ER33104<64)"  ///
       1 "This individual is original sample (ER30002=001-026)"  ///
       2 "This individual is born-in sample (ER30002=030-169)"  ///
       3 "This individual is moved-in sample"  ///
       4 "This individual is joint inclusion sample"  ///
       5 "This individual was a followable nonsample parent"  ///
       6 "This individual is nonsample elderly (ER30002=170-229 and ER30609=64-120 or ER30645=64-120 or ER30692=64-120 or ER30736=64-120 or ER30809=64-120 or ER33104=64-120)"
forvalues n = 1/20 {
    label define ER33102L `n' "Individuals in the family at the time of the 1994 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33102L `n' "Individuals in institutions at the time of the 1994 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33102L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1993 and 1994 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33102L `n' "Individuals who were living in 1993 but died by the time of the 1994 interview"  , modify
}
label define ER33102L        0 "Inap.:  born or moved in after the 1994 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1994 or mover-out nonresponse by 1993 (ER33101=0)"  , modify

label define ER33103L  ///
      10 "Head in 1994; 1993 Head who was mover-out nonresponse by the time of the 1994 interview"  ///
      20 "Legal Wife in 1994; 1993 Wife who was mover-out nonresponse by the time of the 1994 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1993 family, since consecutive interviews may be taken less or more than twelve months apart; 1993 "Wife" who was mover-out nonresponse by the time of the 1994 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1994 or mover-out nonresponse by 1993 (ER33101=0)"

label define ER33107L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1994 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1994 or mover-out nonresponse by 1993 (ER33101=0)"

label define ER33111L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1994 or mover-out nonresponse by 1993 (ER33101=0); mover-out nonresponse for 1994 only if deceased (ER33102=81-89); in an institution in both 1993 and 1994 (ER33102=51-59 and ER33108=0); not a person aged 16 or older (ER33104=001-015)"
forvalues n = 1/20 {
    label define ER33202L `n' "Individuals in the family at the time of the 1995 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33202L `n' "Individuals in institutions at the time of the 1995 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33202L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1994 and 1995 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33202L `n' "Individuals who were living in 1994 but died by the time of the 1995 interview"  , modify
}
label define ER33202L        0 "Inap.:  born or moved in after the 1995 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0)"  , modify

label define ER33203L  ///
      10 "Head in 1995; 1994 Head who was mover-out nonresponse by the time of the 1995 interview"  ///
      20 "Legal Wife in 1995; 1994 Wife who was mover-out nonresponse by the time of the 1995 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1994 family, since consecutive interviews may be taken less or more than twelve months apart; 1994 "Wife" who was mover-out nonresponse by the time of the 1995 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0); born or moved in after the 1995 interview (ER33201>0 and ER33202=0)"

label define ER33207L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1995 interview; from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0); born or moved in after the 1995 interview (ER33201>0 and ER33202=0)"

label define ER33211L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.: from Immigrant sample (ER30001=3001-3511,4001-4851); main family nonresponse by 1995 or mover-out nonresponse by 1994 (ER33201=0); born or moved in after the 1995 interview (ER33201>0 and ER33202=0); mover-out nonresponse for 1995 only if deceased (ER33202=81-89); in an institution in both 1994 and 1995 (ER33202=51-59 and ER33208=0); not a person aged 16 or older (ER33204=001-015)"
forvalues n = 1/20 {
    label define ER33302L `n' "Individuals in the family at the time of the 1996 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33302L `n' "Individuals in institutions at the time of the 1996 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33302L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1995 and 1996 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33302L `n' "Individuals who were living in 1995 but died by the time of the 1996 interview"  , modify
}
label define ER33302L        0 "Inap.:  born or moved in after the 1996 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1996 or mover-out nonresponse by 1995 (ER33301=0)"  , modify

label define ER33303L  ///
      10 "Head in 1996; 1995 Head who was mover-out nonresponse by the time of the 1996 interview"  ///
      20 "Legal Wife in 1996; 1995 Wife who was mover-out nonresponse by the time of the 1996 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1995 family, since consecutive interviews may be taken less or more than twelve months apart; 1995 "Wife" who was mover-out nonresponse by the time of the 1996 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1996 or mover-out nonresponse by 1995 (ER33301=0); born or moved in after the 1996 interview (ER33301>0 and ER33302=0)"

label define ER33307L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1996 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1996 or mover-out nonresponse by 1995 (ER33301=0); born or moved in after the 1996 interview (ER33301>0 and ER33302=0)"

label define ER33311L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1996 or mover-out nonresponse by 1995 (ER33301=0); born or moved in after the 1996 interview (ER33301>0 and ER33302=0); mover-out nonresponse for 1996 only if deceased (ER33302=81-89); in an institution in both 1995 and 1996 (ER33302=51-59 and ER33308=0); not a person aged 16 or older (ER33304=001-015)"
forvalues n = 1/20 {
    label define ER33402L `n' "Individuals in the family at the time of the 1997 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33402L `n' "Individuals in institutions at the time of the 1997 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33402L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1996 and 1997 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33402L `n' "Individuals who were living in 1996 but died by the time of the 1997 interview"  , modify
}
label define ER33402L        0 "Inap.:  born or moved in after the 1997 interview; from Immigrant or Latino samples (ER30001=3001-3511,4001-4851,7001-9308); main family nonresponse by 1997 or mover-out nonresponse by 1996 (ER33401=0)"  , modify

label define ER33403L  ///
      10 "Head in 1997; 1996 Head who was mover-out nonresponse by the time of the 1997 interview"  ///
      20 "Legal Wife in 1997; 1996 Wife who was mover-out nonresponse by the time of the 1997 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more or who was present in the 1996 family, since consecutive interviews may be taken less or more than twelve months apart; 1996 "Wife" who was mover-out nonresponse by the time of the 1997 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap. from Immigrant Sample added in 1999, from Immigrant Sample added in 2017 or Latino samples (ER30001=3442-3511, 4001-4851, 7001-9308); main family nonresponse by 1997 or mover-out nonresponse by 1996 (ER33401=0); born or moved in after the 1997 interview (ER33401>0 and ER33402=0)"

label define ER33407L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1997 interview; from Immigrant 99 recontact, Immigrant 17 or Latino samples (ER30001=3442-3511, 4001-4851, 7001-9308); main family nonresponse by 1997 or mover-out nonresponse by 1996 (ER33401=0); born or moved in after the 1997 interview (ER33401>0 and ER33402=0)"

label define ER33411L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Immigrant 99 recontact, Immigrant 17 or Latino samples (ER30001=3442-3511, 4001-4851, 7001-9308); main family nonresponse by 1997 or mover-out nonresponse by 1996 (ER33401=0); born or moved in after the 1997 interview (ER33401>0 and ER33402=0); mover-out nonresponse for 1997 only if deceased (ER33402=81-89); in an institution in both 1996 and 1997 (ER33402=51-59 and ER33408=0); not a person aged 16 or older (ER33404=001-015)"
forvalues n = 1/20 {
    label define ER33502L `n' "Individuals in the family at the time of the 1999 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33502L `n' "Individuals in institutions at the time of the 1999 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33502L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1997 and 1999 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33502L `n' "Individuals who were living in 1997 but died by the time of the 1999 interview"  , modify
}
label define ER33502L        0 "Inap.:  born or moved in after the 1999 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 1999 or mover-out nonresponse by 1997 (ER33501=0)"  , modify

label define ER33503L  ///
      10 "Head in 1999; 1997 Head who was mover-out nonresponse by the time of the 1999 interview"  ///
      20 "Legal Wife in 1999; 1997 Wife who was mover-out nonresponse by the time of the 1999 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more; 1997 "Wife" who was mover-out nonresponse by the time of the 1999 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 1999 or mover-out nonresponse by 1997 (ER33501=0); born or moved in after the 1999 interview (ER33501>0 and ER33502=0)"

label define ER33507L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 1999 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 1999 or mover-out nonresponse by 1997 (ER33501=0); born or moved in after the 1999 interview (ER33501>0 and ER33502=0)"

label define ER33512L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 1999 or mover-out nonresponse by 1997 (ER33501=0); born or moved in after the 1999 interview (ER33501>0 and ER33502=0); mover-out nonresponse for 1999 only if deceased (ER33502=81-89); in an institution in both 1997 and 1999 (ER33502=51-59 and ER33508=0); not a person aged 16 or older (ER33504=001-015)"
forvalues n = 1/20 {
    label define ER33602L `n' "Individuals in the family at the time of the 2001 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33602L `n' "Individuals in institutions at the time of the 2001 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33602L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 1999 and 2001 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33602L `n' "Individuals who were living in 1999 but died by the time of the 2001 interview"  , modify
}
label define ER33602L        0 "Inap.:  born or moved in after the 2001 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2001 or mover-out nonresponse by 1999 (ER33601=0)"  , modify

label define ER33603L  ///
      10 "Head in 2001; 1999 Head who was mover-out nonresponse by the time of the 2001 interview"  ///
      20 "Legal Wife in 2001; 1999 Wife who was mover-out nonresponse by the time of the 2001 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more; 1999 "Wife" who was mover-out nonresponse by the time of the 2001 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20), but those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2001 or mover-out nonresponse by 1999 (ER33601=0); born or moved in after the 2001 interview (ER33601>0 and ER33602=0)"

label define ER33607L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 2001 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2001 or mover-out nonresponse by 1999 (ER33601=0); born or moved in after the 2001 interview (ER33601>0 and ER33602=0)"

label define ER33612L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2001 or mover-out nonresponse by 1999 (ER33601=0); mover-out nonresponse for 2001 only if deceased (ER33602=81-89); in an institution in both 1999 and 2001 (ER33602=51-59 and ER33608=0); not a person aged 16 or older (ER33604=001-015); born or moved in after the 2001 interview (ER33601>0 and ER33602=0)"
forvalues n = 1/20 {
    label define ER33702L `n' "Individuals in the family at the time of the 2003 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33702L `n' "Individuals in institutions at the time of the 2003 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33702L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2001 and 2003 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33702L `n' "Individuals who were living in 2001 but died by the time of the 2003 interview"  , modify
}
label define ER33702L        0 "Inap.:  born or moved in after the 2003 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2003 or mover-out nonresponse by 2001 (ER33701=0)"  , modify

label define ER33703L  ///
      10 "Head in 2003; 2001 Head who was mover-out nonresponse by the time of the 2003 interview"  ///
      20 "Legal Wife in 2003; 2001 Wife who was mover-out nonresponse by the time of the 2003 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more; 2001 "Wife" who was mover-out nonresponse by the time of the 2003 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife (code 20) who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister."  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives (code 20) only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife (code 20); those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife (code 20); those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2003 or mover-out nonresponse by 2001 (ER33701=0); born or moved in after the 2003 interview (ER33701>0 and ER33702=0)"

label define ER33707L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 2003 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2003 or mover-out nonresponse by 2001 (ER33701=0); born or moved in after the 2003 interview (ER33701>0 and ER33702=0)"

label define ER33712L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2003 or mover-out nonresponse by 2001 (ER33701=0); born or moved in after the 2003 interview (ER33701>0 and ER33702=0); mover-out nonresponse for 2003, only if deceased (ER33702=81-89); in an institution in both 2001 and 2003 (ER33702=51-59 and ER33708=0); not a person aged 16 or older (ER33704=001-015); associated with 2003 FU but moved out before 2002 (ER33708=5, 6, or 8 and ER33710<2002) or moved in in 2003 (ER33708=1 and ER33710=2003)"
forvalues n = 1/20 {
    label define ER33802L `n' "Individuals in the family at the time of the 2005 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33802L `n' "Individuals in institutions at the time of the 2005 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33802L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2003 and 2005 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33802L `n' "Individuals who were living in 2003 but died by the time of the 2005 interview"  , modify
}
label define ER33802L        0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2005 or mover-out nonresponse by 2003 (ER33801=0)"  , modify

label define ER33803L  ///
      10 "Head in 2005; 2003 Head who was mover-out nonresponse by the time of the 2005 interview"  ///
      20 "Legal Wife in 2005; 2003 Wife who was mover-out nonresponse by the time of the 2005 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more; 2003 "Wife" who was mover-out nonresponse by the time of the 2005 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister"  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2005 or mover-out nonresponse by 2003 (ER33801=0)"

label define ER33807L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 2005 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2005 or mover-out nonresponse by 2003 (ER33801=0)"

label define ER33813L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2005 or mover-out nonresponse by 2003 (ER33801=0); mover-out nonresponse for 2005, only if deceased (ER33802=81-89); in an institution in both 2003 and 2005 (ER33802=51-59 and ER33808=0); not a person aged 16 or older (ER33804=001-015); associated with 2005 FU but moved out before 2004 (ER33808=5, 6, or 8 and ER33810<2004) or moved in in 2005 (ER33808=1 and ER33810=2005)"
forvalues n = 1/20 {
    label define ER33902L `n' "Individuals in the family at the time of the 2007 interview"  , modify
}
forvalues n = 51/59 {
    label define ER33902L `n' "Individuals in institutions at the time of the 2007 interview"  , modify
}
forvalues n = 71/80 {
    label define ER33902L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2005 and 2007 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER33902L `n' "Individuals who were living in 2005 but died by the time of the 2007 interview"  , modify
}
label define ER33902L        0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2007 or mover-out nonresponse by 2005 (ER33901=0)"  , modify

label define ER33903L  ///
      10 "Head in 2007; 2005 Head who was mover-out nonresponse by the time of the 2007 interview"  ///
      20 "Legal Wife in 2007; 2005 Wife who was mover-out nonresponse by the time of the 2007 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more; 2005 "Wife" who was mover-out nonresponse by the time of the 2007 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister"  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2007 or mover-out nonresponse by 2005 (ER33901=0)"

label define ER33907L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 2007 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2007 or mover-out nonresponse by 2005 (ER33901=0)"

label define ER33913L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2007 or mover-out nonresponse by 2005 (ER33901=0); mover-out nonresponse for 2007, only if deceased (ER33902=81-89); in an institution in both 2005 and 2007 (ER33902=51-59 and ER33908=0); not a person aged 16 or older (ER33904=001-015); associated with 2007 FU but moved out before 2006 (ER33908=5, 6, or 8 and ER33910<2006) or moved in in 2007 (ER33908=1 and ER33910=2007)"
forvalues n = 1/20 {
    label define ER34002L `n' "Individuals in the family at the time of the 2009 interview"  , modify
}
forvalues n = 51/59 {
    label define ER34002L `n' "Individuals in institutions at the time of the 2009 interview"  , modify
}
forvalues n = 71/80 {
    label define ER34002L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2007 and 2009 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER34002L `n' "Individuals who were living in 2007 but died by the time of the 2009 interview"  , modify
}
label define ER34002L        0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2009 or mover-out nonresponse by 2007 (ER34001=0)"  , modify

label define ER34003L  ///
      10 "Head in 2009; 2007 Head who was mover-out nonresponse by the time of the 2009 interview"  ///
      20 "Legal Wife in 2009; 2007 Wife who was mover-out nonresponse by the time of the 2009 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more; 2007 "Wife" who was mover-out nonresponse by the time of the 2009 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister"  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2009 or mover-out nonresponse by 2007 (ER34002=0)"

label define ER34007L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  not married or permanently cohabiting; spouse was not in FU at the time of the 2009 interview; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2009 or mover-out nonresponse by 2007 (ER34001=0)"

label define ER34016L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2009 or mover-out nonresponse by 2007 (ER34001=0); mover-out nonresponse for 2009, only if deceased (ER34002=81-89); in an institution in both 2007 and 2009 (ER34002=51-59 and ER34008=0); not a person aged 16 or older (ER34004=001-015); associated with 2009 FU but moved out before 2008 (ER34008=5, 6, or 8 and ER34010<2008) or moved in in 2009 (ER34008=1 and ER34010=2009)"
forvalues n = 1/20 {
    label define ER34102L `n' "Individuals in the family at the time of the 2011 interview"  , modify
}
forvalues n = 51/59 {
    label define ER34102L `n' "Individuals in institutions at the time of the 2011 interview"  , modify
}
forvalues n = 71/80 {
    label define ER34102L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2009 and 2011 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER34102L `n' "Individuals who were living in 2009 but died by the time of the 2011 interview"  , modify
}
label define ER34102L        0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0)"  , modify

label define ER34103L  ///
      10 "Head in 2011; 2009 Head who was mover-out nonresponse by the time of the 2011 interview"  ///
      20 "Legal Wife in 2011; 2009 Wife who was mover-out nonresponse by the time of the 2011 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more; 2009 "Wife" who was mover-out nonresponse by the time of the 2011 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister"  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34102=0)"

label define ER34107L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0); spouse was not in FU at the time of the 2011 interview; not married or permanently cohabiting"

label define ER34116L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "NA; DK"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2011 or mover-out nonresponse by 2009 (ER34101=0); mover-out nonresponse for 2011, only if deceased (ER34102=81-89); in an institution in both 2009 and 2011 (ER34102=51-59 and ER34108=0); not a person aged 16 or older (ER34104=001-015); associated with 2011 FU but moved out before 2010 (ER34108=5, 6, or 8 and ER34110<2010) or moved in in 2011 (ER34108=1 and ER34110=2011)"
forvalues n = 1/20 {
    label define ER34202L `n' "Individuals in the family at the time of the 2013 interview"  , modify
}
forvalues n = 51/59 {
    label define ER34202L `n' "Individuals in institutions at the time of the 2013 interview"  , modify
}
forvalues n = 71/80 {
    label define ER34202L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2011 and 2013 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER34202L `n' "Individuals who were living in 2011 but died by the time of the 2013 interview"  , modify
}
label define ER34202L        0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34201=0)"  , modify

label define ER34203L  ///
      10 "Head in 2013; 2011 Head who was mover-out nonresponse by the time of the 2013 interview"  ///
      20 "Legal Wife in 2013; 2011 Wife who was mover-out nonresponse by the time of the 2013 interview"  ///
      22 `""Wife"--female cohabitor who has lived with Head for 12 months or more; 2011 "Wife" who was mover-out nonresponse by the time of the 2013 interview"'  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Wife [code 20] who are not children of Head)"  ///
      35 `"Son or daughter of "Wife" but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"'  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Wife, or spouse of Head`=char(146)'s brother or sister"  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal wives [code 20] only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Wife [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Wife [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Wife (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Wife (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Wife (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Wife (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Wife (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Legal husband of Head"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Wife (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes homosexual partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34202=0)"

label define ER34207L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  spouse was not in FU at the time of the 2013 interview; not married or permanently cohabiting; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34201=0)"

label define ER34216L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseWife; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2013 or mover-out nonresponse by 2011 (ER34201=0); mover-out nonresponse for 2013, only if deceased (ER34202=81-89); in an institution in both 2011 and 2013 (ER34202=51-59 and ER34208=0); not a person aged 16 or older (ER34204=001-015); associated with 2013 FU but moved out before 2012 (ER34208=5, 6, or 8 and ER34210 <2012)"
forvalues n = 1/20 {
    label define ER34302L `n' "Individuals in the family at the time of the 2015 interview"  , modify
}
forvalues n = 51/59 {
    label define ER34302L `n' "Individuals in institutions at the time of the 2015 interview"  , modify
}
forvalues n = 71/80 {
    label define ER34302L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2013 and 2015 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER34302L `n' "Individuals who were living in 2013 but died by the time of the 2015 interview"  , modify
}
label define ER34302L        0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34301=0)"  , modify

label define ER34303L  ///
      10 "Head in 2015; 2013 Head who was mover-out nonresponse by the time of the 2015 interview"  ///
      20 "Legal Spouse in 2015; 2013 Spouse who was mover-out nonresponse by the time of the 2015 interview"  ///
      22 "Partner--female cohabitor who has lived with Head for 12 months or more; 2013 Partner who was mover-out nonresponse by the time of the 2015 interview"  ///
      30 "Son or daughter of Head (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Head (children of legal Spouse [code 20] who are not children of Head)"  ///
      35 "Son or daughter of Partner but not Head (includes only those children of mothers whose relationship to Head is 22 but who are not children of Head)"  ///
      37 "Son-in-law or daughter-in-law of Head (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Head (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Head; i.e., brother or sister of legal Spouse, or spouse of Head`=char(146)'s brother or sister"  ///
      48 "Brother or sister of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Head (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Head (includes parents of legal spouses [code 20] only)"  ///
      58 "Father or mother of Head`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Head (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Head (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Head (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Spouse (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Head"  ///
      69 "Great-grandfather or great-grandmother of legal Spouse (code 20)"  ///
      70 "Nephew or niece of Head"  ///
      71 "Nephew or niece of legal Spouse (code 20)"  ///
      72 "Uncle or Aunt of Head"  ///
      73 "Uncle or Aunt of legal Spouse (code 20)"  ///
      74 "Cousin of Head"  ///
      75 "Cousin of legal Spouse (code 20)"  ///
      83 "Children of first-year cohabitor but not of Head (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Head"  ///
      90 "Uncooperative legal spouse of Head (this individual is unable or unwilling to be designated as Head)"  ///
      95 "Other relative of Head"  ///
      96 "Other relative of legal Spouse (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes same-sex partners, friends of children of the FU, etc.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34302=0)"

label define ER34308L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  spouse was not in FU at the time of the 2015 interview; not married or permanently cohabiting; from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34301=0)"

label define ER34317L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "HouseSpouse; keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); from Immigrant 2017 sample (ER30001=4001-4851); main family nonresponse by 2015 or mover-out nonresponse by 2013 (ER34301=0); mover-out nonresponse for 2015, only if deceased (ER34302=81-89); in an institution in both 2013 and 2015 (ER34302=51-59 and ER34309=0); not a person aged 16 or older (ER34305=001-015); associated with 2015 FU but moved out before 2014 (ER34309=5, 6, or 8 and ER34311 <2014)"
forvalues n = 1/20 {
    label define ER34502L `n' "Individuals in the family at the time of the 2017 interview"  , modify
}
forvalues n = 51/59 {
    label define ER34502L `n' "Individuals in institutions at the time of the 2017 interview"  , modify
}
forvalues n = 71/80 {
    label define ER34502L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2015 and 2017 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER34502L `n' "Individuals who were living in 2015 but died by the time of the 2017 interview"  , modify
}
label define ER34502L        0 "Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or mover-out nonresponse by 2015 (ER34501=0)"  , modify

label define ER34503L  ///
      10 "Reference Person in 2017; 2015 Reference Person who was mover-out nonresponse by the time of the 2017 interview"  ///
      20 "Legal Spouse in 2017; 2015 Spouse who was mover-out nonresponse by the time of the 2017 interview"  ///
      22 "Partner--cohabitor who has lived with Reference Person for 12 months or more; 2015 Partner who was mover-out nonresponse by the time of the 2017 interview"  ///
      30 "Son or daughter of Reference Person (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Reference Person (children of legal Spouse [code 20] who are not children of Reference Person)"  ///
      35 "Son or daughter of Partner but not Reference Person (includes only those children of mothers whose relationship to Reference Person is 22 but who are not children of Reference Person)"  ///
      37 "Son-in-law or daughter-in-law of Reference Person (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Reference Person (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Reference Person (i.e., brother or sister of legal Spouse; spouse of HD`=char(146)'s brother or sister; spouse of legal Spouse`=char(146)'s brother or sister)"  ///
      48 "Brother or sister of Reference Person`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Reference Person (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Reference Person (includes parents of legal spouses [code 20] only)"  ///
      58 "Father or mother of Reference Person`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Reference Person (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Reference Person (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Reference Person (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Spouse (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Reference Person"  ///
      69 "Great-grandfather or great-grandmother of legal Spouse (code 20)"  ///
      70 "Nephew or niece of Reference Person"  ///
      71 "Nephew or niece of legal Spouse (code 20)"  ///
      72 "Uncle or Aunt of Reference Person"  ///
      73 "Uncle or Aunt of legal Spouse (code 20)"  ///
      74 "Cousin of Reference Person"  ///
      75 "Cousin of legal Spouse (code 20)"  ///
      83 "Children of first-year cohabitor but not of Reference Person (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Reference Person"  ///
      90 "Uncooperative legal spouse of Reference Person (this individual is unable or unwilling to be designated as Reference Person or Spouse)"  ///
      92 "Uncooperative partner of Reference Person (this individual is unable or unwilling to be designated as Partner)"  ///
      95 "Other relative of Reference Person"  ///
      96 "Other relative of legal Spouse (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes friends of children of the FU, boyfriend/girlfriend of son/daughter, et al.)"  ///
       0 "Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or mover-out nonresponse by 2015 (ER34502=0)"

label define ER34507L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  spouse was not in FU at the time of the 2017 interview; not married or permanently cohabiting; from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or mover-out nonresponse by 2015 (ER34501=0)"

label define ER34516L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "Keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  from Immigrant 17 recontact sample (ER30001=4700-4851) or Multiplicity sample (ER30001=4001-4462 and ER32052=2019); from Latino sample (ER30001=7001-9308); main family nonresponse by 2017 or mover-out nonresponse by 2015 (ER34501=0); individual was alive at the time of the 2015 interview but passed away by the time of the 2017 interview (ER34502=81-89); in an institution in both 2015 and 2017 (ER34502=51-59 and ER34508=0); not a person aged 16 or older (ER34504=001-015); associated with 2017 FU but moved out before 2016 (ER34508=5, 6, or 8 and ER34510 <2016)"
forvalues n = 1/20 {
    label define ER34702L `n' "Individuals in the family at the time of the 2019 interview"  , modify
}
forvalues n = 51/59 {
    label define ER34702L `n' "Individuals in institutions at the time of the 2019 interview"  , modify
}
forvalues n = 71/80 {
    label define ER34702L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2017 and 2019 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER34702L `n' "Individuals who were living in 2017 but died by the time of the 2019 interview"  , modify
}
label define ER34702L        0 "Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34701=0)"  , modify

label define ER34703L  ///
      10 "Reference Person in 2019; 2017 Reference Person who was mover-out nonresponse by the time of the 2019 interview"  ///
      20 "Legal Spouse in 2019; 2017 Spouse who was mover-out nonresponse by the time of the 2019 interview"  ///
      22 "Partner--cohabitor who has lived with Reference Person for 12 months or more; 2017 Partner who was mover-out nonresponse by the time of the 2019 interview"  ///
      30 "Son or daughter of Reference Person (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Reference Person (children of legal Spouse [code 20] who are not children of Reference Person)"  ///
      35 "Son or daughter of Partner but not Reference Person (includes only those children of mothers whose relationship to Reference Person is 22 but who are not children of Reference Person)"  ///
      37 "Son-in-law or daughter-in-law of Reference Person (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Reference Person (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Reference Person (i.e., brother or sister of legal Spouse; spouse of HD`=char(146)'s brother or sister; spouse of legal Spouse`=char(146)'s brother or sister)"  ///
      48 "Brother or sister of Reference Person`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Reference Person (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Reference Person (includes parents of legal spouses [code 20] only)"  ///
      58 "Father or mother of Reference Person`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Reference Person (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Reference Person (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Reference Person (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Spouse (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Reference Person"  ///
      69 "Great-grandfather or great-grandmother of legal Spouse (code 20)"  ///
      70 "Nephew or niece of Reference Person"  ///
      71 "Nephew or niece of legal Spouse (code 20)"  ///
      72 "Uncle or Aunt of Reference Person"  ///
      73 "Uncle or Aunt of legal Spouse (code 20)"  ///
      74 "Cousin of Reference Person"  ///
      75 "Cousin of legal Spouse (code 20)"  ///
      83 "Children of first-year cohabitor but not of Reference Person (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Reference Person"  ///
      90 "Uncooperative legal spouse of Reference Person (this individual is unable or unwilling to be designated as Reference Person or Spouse)"  ///
      92 "Uncooperative partner of Reference Person (this individual is unable or unwilling to be designated as Partner)"  ///
      95 "Other relative of Reference Person"  ///
      96 "Other relative of legal Spouse (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes friends of children of the FU, boyfriend/girlfriend of son/daughter, et al.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34702=0)"

label define ER34707L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  spouse was not in FU at the time of the 2019 interview; not married or permanently cohabiting; from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34701=0)"

label define ER34716L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "Keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2019 or mover-out nonresponse by 2017 (ER34701=0); individual was alive at the time of the 2017 interview but passed away by the time of the 2019 interview (ER34702=81-89); in an institution in both 2017 and 2019 (ER34702=51-59 and ER34708=0); not a person aged 16 or older (ER34704=001-015); associated with 2019 FU but moved out before 2018 (ER34708=5, 6, or 8 and ER34710 <2018)"
forvalues n = 1/20 {
    label define ER34902L `n' "Individuals in the family at the time of the 2021 interview"  , modify
}
forvalues n = 51/59 {
    label define ER34902L `n' "Individuals in institutions at the time of the 2021 interview"  , modify
}
forvalues n = 71/80 {
    label define ER34902L `n' "Individuals who moved out of the FU or out of institutions and established their own households between the 2019 and 2021 interviews"  , modify
}
forvalues n = 81/89 {
    label define ER34902L `n' "Individuals who were living in 2019 but died by the time of the 2021 interview"  , modify
}
label define ER34902L        0 "Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34901=0)"  , modify

label define ER34903L  ///
      10 "Reference Person in 2021; 2019 Reference Person who was mover-out nonresponse by the time of the 20121 interview"  ///
      20 "Legal Spouse in 2021; 2019 Spouse who was mover-out nonresponse by the time of the 2021 interview"  ///
      22 "Partner--cohabitor who has lived with Reference Person for 12 months or more; 2019 Partner who was mover-out nonresponse by the time of the 2021 interview"  ///
      30 "Son or daughter of Reference Person (includes adopted children but not stepchildren)"  ///
      33 "Stepson or stepdaughter of Reference Person (children of legal Spouse [code 20] who are not children of Reference Person)"  ///
      35 "Son or daughter of Partner but not Reference Person (includes only those children of mothers whose relationship to Reference Person is 22 but who are not children of Reference Person)"  ///
      37 "Son-in-law or daughter-in-law of Reference Person (includes stepchildren-in-law)"  ///
      38 "Foster son or foster daughter, not legally adopted"  ///
      40 "Brother or sister of Reference Person (includes step and half sisters and brothers)"  ///
      47 "Brother-in-law or sister-in-law of Reference Person (i.e., brother or sister of legal Spouse; spouse of HD`=char(146)'s brother or sister; spouse of legal Spouse`=char(146)'s brother or sister)"  ///
      48 "Brother or sister of Reference Person`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      50 "Father or mother of Reference Person (includes stepparents)"  ///
      57 "Father-in-law or mother-in-law of Reference Person (includes parents of legal spouses [code 20] only)"  ///
      58 "Father or mother of Reference Person`=char(146)'s cohabitor (the cohabitor is coded 22 or 88)"  ///
      60 "Grandson or granddaughter of Reference Person (includes grandchildren of legal Spouse [code 20] only; those of a cohabitor are coded 97)"  ///
      65 "Great-grandson or great-granddaughter of Reference Person (includes great-grandchildren of legal Spouse [code 20]; those of a cohabitor are coded 97)"  ///
      66 "Grandfather or grandmother of Reference Person (includes stepgrandparents)"  ///
      67 "Grandfather or grandmother of legal Spouse (code 20)"  ///
      68 "Great-grandfather or great-grandmother of Reference Person"  ///
      69 "Great-grandfather or great-grandmother of legal Spouse (code 20)"  ///
      70 "Nephew or niece of Reference Person"  ///
      71 "Nephew or niece of legal Spouse (code 20)"  ///
      72 "Uncle or Aunt of Reference Person"  ///
      73 "Uncle or Aunt of legal Spouse (code 20)"  ///
      74 "Cousin of Reference Person"  ///
      75 "Cousin of legal Spouse (code 20)"  ///
      83 "Children of first-year cohabitor but not of Reference Person (the parent of this child is coded 88)"  ///
      88 "First-year cohabitor of Reference Person"  ///
      90 "Uncooperative legal spouse of Reference Person (this individual is unable or unwilling to be designated as Reference Person or Spouse)"  ///
      92 "Uncooperative partner of Reference Person (this individual is unable or unwilling to be designated as Partner)"  ///
      95 "Other relative of Reference Person"  ///
      96 "Other relative of legal Spouse (code 20)"  ///
      97 "Other relative of cohabitor (the cohabitor is code 22 or 88)"  ///
      98 "Other nonrelatives (includes friends of children of the FU, boyfriend/girlfriend of son/daughter, et al.)"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34902=0)"

label define ER34907L  ///
       1 "Spouse in couple numbered 1"  ///
       2 "Spouse in couple numbered 2"  ///
       3 "Spouse in couple numbered 3"  ///
       4 "Spouse in couple numbered 4"  ///
       0 "Inap.:  spouse was not in FU at the time of the 2021 interview; not married or permanently cohabiting; from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34901=0)"

label define ER34916L  ///
       1 "Working now"  ///
       2 "Only temporarily laid off"  ///
       3 "Looking for work, unemployed"  ///
       4 "Retired"  ///
       5 "Permanently disabled"  ///
       6 "Keeping house"  ///
       7 "Student"  ///
       8 "Other"  ///
       9 "DK; NA; refused"  ///
       0 "Inap.:  from Latino sample (ER30001=7001-9308); main family nonresponse by 2021 or mover-out nonresponse by 2019 (ER34901=0); individual was alive at the time of the 2019 interview but passed away by the time of the 2021 interview (ER34902=81-89); in an institution in both 2019 and 2021 (ER34902=51-59 and ER34908=0); not a person aged 16 or older (ER34904=001-015); associated with 2021 FU but moved out before 2020 (ER34908=5, 6, or 8 and ER34910 <2020)"

label values ER30000    ER30000L
label values ER30003    ER30003L
label values ER30005    ER30005L
label values ER30021    ER30021L
label values ER30022    ER30022L
label values ER30024    ER30024L
label values ER30044    ER30044L
label values ER30045    ER30045L
label values ER30047    ER30047L
label values ER30068    ER30068L
label values ER30069    ER30069L
label values ER30071    ER30071L
label values ER30092    ER30092L
label values ER30093    ER30093L
label values ER30095    ER30095L
label values ER30118    ER30118L
label values ER30119    ER30119L
label values ER30121    ER30121L
label values ER30139    ER30139L
label values ER30140    ER30140L
label values ER30142    ER30142L
label values ER30161    ER30161L
label values ER30162    ER30162L
label values ER30164    ER30164L
label values ER30189    ER30189L
label values ER30190    ER30190L
label values ER30192    ER30192L
label values ER30218    ER30218L
label values ER30219    ER30219L
label values ER30221    ER30221L
label values ER30247    ER30247L
label values ER30248    ER30248L
label values ER30250    ER30250L
label values ER30284    ER30284L
label values ER30285    ER30285L
label values ER30287    ER30287L
label values ER30293    ER30293L
label values ER30314    ER30314L
label values ER30315    ER30315L
label values ER30317    ER30317L
label values ER30323    ER30323L
label values ER30344    ER30344L
label values ER30345    ER30345L
label values ER30347    ER30347L
label values ER30353    ER30353L
label values ER30374    ER30374L
label values ER30375    ER30375L
label values ER30377    ER30377L
label values ER30382    ER30382L
label values ER30400    ER30400L
label values ER30401    ER30401L
label values ER30405    ER30405L
label values ER30411    ER30411L
label values ER30430    ER30430L
label values ER30431    ER30431L
label values ER30435    ER30435L
label values ER30441    ER30441L
label values ER30464    ER30464L
label values ER30465    ER30465L
label values ER30469    ER30469L
label values ER30474    ER30474L
label values ER30499    ER30499L
label values ER30500    ER30500L
label values ER30504    ER30504L
label values ER30509    ER30509L
label values ER30536    ER30536L
label values ER30537    ER30537L
label values ER30541    ER30541L
label values ER30545    ER30545L
label values ER30571    ER30571L
label values ER30572    ER30572L
label values ER30576    ER30576L
label values ER30580    ER30580L
label values ER30607    ER30607L
label values ER30608    ER30608L
label values ER30612    ER30612L
label values ER30616    ER30616L
label values ER30643    ER30643L
label values ER30644    ER30644L
label values ER30648    ER30648L
label values ER30653    ER30653L
label values ER30690    ER30690L
label values ER30691    ER30691L
label values ER30695    ER30695L
label values ER30699    ER30699L
label values ER30734    ER30734L
label values ER30735    ER30735L
label values ER30739    ER30739L
label values ER30744    ER30744L
label values ER30807    ER30807L
label values ER30808    ER30808L
label values ER30812    ER30812L
label values ER30816    ER30816L
label values ER32000    ER32000L
label values ER32006    ER32006L
label values ER33102    ER33102L
label values ER33103    ER33103L
label values ER33107    ER33107L
label values ER33111    ER33111L
label values ER33202    ER33202L
label values ER33203    ER33203L
label values ER33207    ER33207L
label values ER33211    ER33211L
label values ER33302    ER33302L
label values ER33303    ER33303L
label values ER33307    ER33307L
label values ER33311    ER33311L
label values ER33402    ER33402L
label values ER33403    ER33403L
label values ER33407    ER33407L
label values ER33411    ER33411L
label values ER33502    ER33502L
label values ER33503    ER33503L
label values ER33507    ER33507L
label values ER33512    ER33512L
label values ER33602    ER33602L
label values ER33603    ER33603L
label values ER33607    ER33607L
label values ER33612    ER33612L
label values ER33702    ER33702L
label values ER33703    ER33703L
label values ER33707    ER33707L
label values ER33712    ER33712L
label values ER33802    ER33802L
label values ER33803    ER33803L
label values ER33807    ER33807L
label values ER33813    ER33813L
label values ER33902    ER33902L
label values ER33903    ER33903L
label values ER33907    ER33907L
label values ER33913    ER33913L
label values ER34002    ER34002L
label values ER34003    ER34003L
label values ER34007    ER34007L
label values ER34016    ER34016L
label values ER34102    ER34102L
label values ER34103    ER34103L
label values ER34107    ER34107L
label values ER34116    ER34116L
label values ER34202    ER34202L
label values ER34203    ER34203L
label values ER34207    ER34207L
label values ER34216    ER34216L
label values ER34302    ER34302L
label values ER34303    ER34303L
label values ER34308    ER34308L
label values ER34317    ER34317L
label values ER34502    ER34502L
label values ER34503    ER34503L
label values ER34507    ER34507L
label values ER34516    ER34516L
label values ER34702    ER34702L
label values ER34703    ER34703L
label values ER34707    ER34707L
label values ER34716    ER34716L
label values ER34902    ER34902L
label values ER34903    ER34903L
label values ER34907    ER34907L
label values ER34916    ER34916L
