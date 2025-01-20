#delimit ;
*  PSID DATA CENTER *****************************************************
   JOBID            : 342283
   DATA_DOMAIN      : IND
   USER_WHERE       : NULL
   FILE_TYPE        : All Individuals Data
   OUTPUT_DATA_TYPE : ASCII
   STATEMENTS       : do
   CODEBOOK_TYPE    : PDF
   N_OF_VARIABLES   : 53
   N_OF_OBSERVATIONS: 61809
   MAX_REC_LENGTH   : 197
   DATE & TIME      : January 20, 2025 @ 13:42:08
*************************************************************************
;

infix
      ER30000              1 - 1           ER30001              2 - 5           ER30002              6 - 8
      ER32000              9 - 9           ER32006             10 - 10          ER30689             11 - 14
      ER30690             15 - 16          ER30691             17 - 18     long ER30705             19 - 24
      ER30733             25 - 28          ER30734             29 - 30          ER30735             31 - 32
 long ER30750             33 - 38          ER30806             39 - 43          ER30807             44 - 45
      ER30808             46 - 47     long ER30821             48 - 53          ER33801             54 - 58
      ER33802             59 - 60          ER33803             61 - 62     long ER33838C            63 - 69
      ER33901             70 - 74          ER33902             75 - 76          ER33903             77 - 78
 long ER33938C            79 - 85          ER34001             86 - 90          ER34002             91 - 92
      ER34003             93 - 94     long ER34032A            95 - 101         ER34101            102 - 106
      ER34102            107 - 108         ER34103            109 - 110    long ER34144A           111 - 117
      ER34201            118 - 122         ER34202            123 - 124         ER34203            125 - 126
 long ER34251A           127 - 133         ER34301            134 - 138         ER34302            139 - 140
      ER34303            141 - 142    long ER34401A           143 - 149         ER34501            150 - 154
      ER34502            155 - 156         ER34503            157 - 158    long ER34636            159 - 165
      ER34701            166 - 170         ER34702            171 - 172         ER34703            173 - 174
 long ER34845            175 - 181         ER34901            182 - 186         ER34902            187 - 188
      ER34903            189 - 190    long ER35046            191 - 197
using J342283.txt, clear
;
label variable ER30000         "RELEASE NUMBER"                           ;
label variable ER30001         "1968 INTERVIEW NUMBER"                    ;
label variable ER30002         "PERSON NUMBER                         68" ;
label variable ER32000         "SEX OF INDIVIDUAL"                        ;
label variable ER32006         "WHETHER SAMPLE OR NONSAMPLE"              ;
label variable ER30689         "1991 INTERVIEW NUMBER"                    ;
label variable ER30690         "SEQUENCE NUMBER                       91" ;
label variable ER30691         "RELATION TO HEAD                      91" ;
label variable ER30705         "TOT LABOR INCOME-IND                  91" ;
label variable ER30733         "1992 INTERVIEW NUMBER"                    ;
label variable ER30734         "SEQUENCE NUMBER                       92" ;
label variable ER30735         "RELATION TO HEAD                      92" ;
label variable ER30750         "TOT LABOR INCOME                      92" ;
label variable ER30806         "1993 INTERVIEW NUMBER"                    ;
label variable ER30807         "SEQUENCE NUMBER                       93" ;
label variable ER30808         "RELATION TO HEAD                      93" ;
label variable ER30821         "TOTAL LABOR INCOME                    93" ;
label variable ER33801         "2005 INTERVIEW NUMBER"                    ;
label variable ER33802         "SEQUENCE NUMBER                       05" ;
label variable ER33803         "RELATION TO HEAD                      05" ;
label variable ER33838C        "OFUM TOTAL LABOR INCOME- IMPUTED      05" ;
label variable ER33901         "2007 INTERVIEW NUMBER"                    ;
label variable ER33902         "SEQUENCE NUMBER                       07" ;
label variable ER33903         "RELATION TO HEAD                      07" ;
label variable ER33938C        "OFUM TOTAL LABOR INCOME- IMPUTED      07" ;
label variable ER34001         "2009 INTERVIEW NUMBER"                    ;
label variable ER34002         "SEQUENCE NUMBER                       09" ;
label variable ER34003         "RELATION TO HEAD                      09" ;
label variable ER34032A        "OFUM TOTAL LABOR INCOME- IMPUTED      09" ;
label variable ER34101         "2011 INTERVIEW NUMBER"                    ;
label variable ER34102         "SEQUENCE NUMBER                       11" ;
label variable ER34103         "RELATION TO HEAD                      11" ;
label variable ER34144A        "OFUM TOTAL LABOR INCOME- IMPUTED      11" ;
label variable ER34201         "2013 INTERVIEW NUMBER"                    ;
label variable ER34202         "SEQUENCE NUMBER                       13" ;
label variable ER34203         "RELATION TO HEAD                      13" ;
label variable ER34251A        "OFUM TOTAL LABOR INCOME- IMPUTED      13" ;
label variable ER34301         "2015 INTERVIEW NUMBER"                    ;
label variable ER34302         "SEQUENCE NUMBER                       15" ;
label variable ER34303         "RELATION TO HEAD                      15" ;
label variable ER34401A        "OFUM TOTAL LABOR INCOME- IMPUTED      15" ;
label variable ER34501         "2017 INTERVIEW NUMBER"                    ;
label variable ER34502         "SEQUENCE NUMBER                       17" ;
label variable ER34503         "RELATION TO REFERENCE PERSON          17" ;
label variable ER34636         "OFUM TOTAL LABOR INCOME- IMPUTED      17" ;
label variable ER34701         "2019 INTERVIEW NUMBER"                    ;
label variable ER34702         "SEQUENCE NUMBER                       19" ;
label variable ER34703         "RELATION TO REFERENCE PERSON          19" ;
label variable ER34845         "OFUM TOTAL LABOR INCOME- IMPUTED      19" ;
label variable ER34901         "2021 INTERVIEW NUMBER"                    ;
label variable ER34902         "SEQUENCE NUMBER                       21" ;
label variable ER34903         "RELATION TO REFERENCE PERSON          21" ;
label variable ER35046         "OFUM TOTAL LABOR INCOME- IMPUTED      21" ;

save "indiv_wages.dta", replace
