
label define ER30000L  ///
       1 "Release number 1, June 2023"  ///
       2 "Release number 2, March 2024"  ///
       3 "Release number 3, August 2024"
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

label values ER30000    ER30000L
label values ER30690    ER30690L
label values ER30691    ER30691L
label values ER30734    ER30734L
label values ER30735    ER30735L
label values ER30807    ER30807L
label values ER30808    ER30808L
label values ER32000    ER32000L
label values ER32006    ER32006L
label values ER33802    ER33802L
label values ER33803    ER33803L
label values ER33902    ER33902L
label values ER33903    ER33903L
label values ER34002    ER34002L
label values ER34003    ER34003L
label values ER34102    ER34102L
label values ER34103    ER34103L
label values ER34202    ER34202L
label values ER34203    ER34203L
label values ER34302    ER34302L
label values ER34303    ER34303L
label values ER34502    ER34502L
label values ER34503    ER34503L
label values ER34702    ER34702L
label values ER34703    ER34703L
label values ER34902    ER34902L
label values ER34903    ER34903L
