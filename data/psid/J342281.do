#delimit ;
*  PSID DATA CENTER *****************************************************
   JOBID            : 342281
   DATA_DOMAIN      : FAM
   USER_WHERE       : NULL
   FILE_TYPE        : NULL
   OUTPUT_DATA_TYPE : ASCII
   STATEMENTS       : do
   CODEBOOK_TYPE    : PDF
   N_OF_VARIABLES   : 126
   N_OF_OBSERVATIONS: 32824
   MAX_REC_LENGTH   : 310
   DATE & TIME      : January 20, 2025 @ 13:35:00
*************************************************************************
;

infix
      V1                   1 - 1           V3                   2 - 5           V115                 6 - 7
      V441                 8 - 8           V442                 9 - 12          V549                13 - 14
      V1101               15 - 15          V1102               16 - 19          V1238               20 - 21
      V1801               22 - 22          V1802               23 - 26          V1941               27 - 28
      V2401               29 - 29          V2402               30 - 33          V2541               34 - 35
      V3001               36 - 36          V3002               37 - 40          V3094               41 - 42
      V3401               43 - 43          V3402               44 - 47          V3507               48 - 49
      V3801               50 - 50          V3802               51 - 54          V3920               55 - 56
      V4301               57 - 57          V4302               58 - 61          V4435               62 - 63
      V5201               64 - 64          V5202               65 - 68          V5349               69 - 70
      V5701               71 - 71          V5702               72 - 75          V5849               76 - 77
      V6301               78 - 78          V6302               79 - 82          V6461               83 - 84
      V6901               85 - 85          V6902               86 - 89          V7066               90 - 91
      V7501               92 - 92          V7502               93 - 96          V7657               97 - 98
      V8201               99 - 99          V8202              100 - 103         V8351              104 - 105
      V8801              106 - 106         V8802              107 - 110         V8960              111 - 112
      V10001             113 - 113         V10002             114 - 117         V10418             118 - 119
      V11101             120 - 120         V11102             121 - 124         V11605             125 - 126
      V12501             127 - 127         V12502             128 - 131         V13010             132 - 133
      V13701             134 - 134         V13702             135 - 138         V14113             139 - 140
      V14801             141 - 141         V14802             142 - 145         V15129             146 - 147
      V16301             148 - 148         V16302             149 - 152         V16630             153 - 154
      V17701             155 - 155         V17702             156 - 160         V18048             161 - 162
      V19001             163 - 163         V19002             164 - 167         V19348             168 - 169
      V20301             170 - 170         V20302             171 - 174         V20650             175 - 176
      V21601             177 - 177         V21602             178 - 182         V22405             183 - 184
      ER2001             185 - 185         ER2002             186 - 190         ER2006             191 - 192
      ER5001             193 - 193         ER5002             194 - 198         ER5005             199 - 200
      ER7001             201 - 201         ER7002             202 - 205         ER7005             206 - 207
      ER10001            208 - 208         ER10002            209 - 213         ER10008            214 - 215
      ER13001            216 - 216         ER13002            217 - 221         ER13009            222 - 223
      ER17001            224 - 224         ER17002            225 - 228         ER17012            229 - 230
      ER21001            231 - 231         ER21002            232 - 236         ER21016            237 - 238
      ER25001            239 - 239         ER25002            240 - 244         ER25016            245 - 246
      ER36001            247 - 247         ER36002            248 - 252         ER36016            253 - 254
      ER42001            255 - 255         ER42002            256 - 260         ER42016            261 - 262
      ER47301            263 - 263         ER47302            264 - 268         ER47316            269 - 270
      ER53001            271 - 271         ER53002            272 - 276         ER53016            277 - 278
      ER60001            279 - 279         ER60002            280 - 284         ER60016            285 - 286
      ER66001            287 - 287         ER66002            288 - 292         ER66016            293 - 294
      ER72001            295 - 295         ER72002            296 - 300         ER72016            301 - 302
      ER78001            303 - 303         ER78002            304 - 308         ER78016            309 - 310
using J342281.txt, clear
;
label variable V1              "RELEASE NUMBER"                           ;
label variable V3              "FAMILY NUMBER"                            ;
label variable V115            "NUMBER IN FAMILY"                         ;
label variable V441            "RELEASE NUMBER"                           ;
label variable V442            "1969 INT NUMBER"                          ;
label variable V549            "TOTAL # IN FU"                            ;
label variable V1101           "RELEASE NUMBER"                           ;
label variable V1102           "1970 INT #"                               ;
label variable V1238           "# IN FU"                                  ;
label variable V1801           "RELEASE NUMBER"                           ;
label variable V1802           "71 ID NO."                                ;
label variable V1941           "# IN FU"                                  ;
label variable V2401           "RELEASE NUMBER"                           ;
label variable V2402           "1972 INT #"                               ;
label variable V2541           "# IN FU"                                  ;
label variable V3001           "RELEASE NUMBER"                           ;
label variable V3002           "1973 INT #"                               ;
label variable V3094           "NUMBER IN FU"                             ;
label variable V3401           "RELEASE NUMBER"                           ;
label variable V3402           "1974 ID NUMBER"                           ;
label variable V3507           "# IN FU"                                  ;
label variable V3801           "RELEASE NUMBER"                           ;
label variable V3802           "1975 INT #"                               ;
label variable V3920           "# IN FU"                                  ;
label variable V4301           "RELEASE NUMBER"                           ;
label variable V4302           "1976 ID NUMBER"                           ;
label variable V4435           "NUMBER IN FU"                             ;
label variable V5201           "RELEASE NUMBER"                           ;
label variable V5202           "1977 ID"                                  ;
label variable V5349           "# IN FU"                                  ;
label variable V5701           "RELEASE NUMBER"                           ;
label variable V5702           "1978 ID"                                  ;
label variable V5849           "# IN FU"                                  ;
label variable V6301           "RELEASE NUMBER"                           ;
label variable V6302           "1979 ID"                                  ;
label variable V6461           "# IN FU"                                  ;
label variable V6901           "RELEASE NUMBER"                           ;
label variable V6902           "1980 INTERVIEW NUMBER"                    ;
label variable V7066           "# IN FU"                                  ;
label variable V7501           "RELEASE NUMBER"                           ;
label variable V7502           "1981 INTERVIEW NUMBER"                    ;
label variable V7657           "# IN FU"                                  ;
label variable V8201           "RELEASE NUMBER"                           ;
label variable V8202           "1982 INTERVIEW NUMBER"                    ;
label variable V8351           "# IN FU"                                  ;
label variable V8801           "RELEASE NUMBER"                           ;
label variable V8802           "1983 INTERVIEW NUMBER"                    ;
label variable V8960           "# IN FU"                                  ;
label variable V10001          "RELEASE NUMBER"                           ;
label variable V10002          "1984 INTERVIEW NUMBER"                    ;
label variable V10418          "# IN FU"                                  ;
label variable V11101          "RELEASE NUMBER"                           ;
label variable V11102          "1985 INTERVIEW NUMBER"                    ;
label variable V11605          "# IN FU"                                  ;
label variable V12501          "RELEASE NUMBER"                           ;
label variable V12502          "1986 INTERVIEW NUMBER"                    ;
label variable V13010          "# IN FU"                                  ;
label variable V13701          "RELEASE NUMBER"                           ;
label variable V13702          "1987 INTERVIEW NUMBER"                    ;
label variable V14113          "# IN FU"                                  ;
label variable V14801          "RELEASE NUMBER"                           ;
label variable V14802          "1988 INTERVIEW NUMBER"                    ;
label variable V15129          "# IN FU"                                  ;
label variable V16301          "RELEASE NUMBER"                           ;
label variable V16302          "1989 INTERVIEW NUMBER"                    ;
label variable V16630          "# IN FU"                                  ;
label variable V17701          "RELEASE NUMBER"                           ;
label variable V17702          "1990 INTERVEW NUMBER"                     ;
label variable V18048          "# IN FU"                                  ;
label variable V19001          "RELEASE NUMBER"                           ;
label variable V19002          "1991 INTERVIEW NUMBER"                    ;
label variable V19348          "# IN FU"                                  ;
label variable V20301          "RELEASE NUMBER"                           ;
label variable V20302          "1992 INTERVIEW NUMBER"                    ;
label variable V20650          "# IN FU"                                  ;
label variable V21601          "RELEASE NUMBER"                           ;
label variable V21602          "1993 INTERVIEW NUMBER"                    ;
label variable V22405          "NUMBER IN FAMILY UNIT"                    ;
label variable ER2001          "RELEASE NUMBER"                           ;
label variable ER2002          "1994 INTERVIEW #"                         ;
label variable ER2006          "# IN FU"                                  ;
label variable ER5001          "RELEASE NUMBER"                           ;
label variable ER5002          "1995 INTERVIEW #"                         ;
label variable ER5005          "# IN FU"                                  ;
label variable ER7001          "RELEASE NUMBER"                           ;
label variable ER7002          "1996 INTERVIEW #"                         ;
label variable ER7005          "# IN FU"                                  ;
label variable ER10001         "RELEASE NUMBER"                           ;
label variable ER10002         "1997 INTERVIEW #"                         ;
label variable ER10008         "# IN FU"                                  ;
label variable ER13001         "RELEASE NUMBER"                           ;
label variable ER13002         "1999 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER13009         "# IN FU"                                  ;
label variable ER17001         "RELEASE NUMBER"                           ;
label variable ER17002         "2001 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER17012         "# IN FU"                                  ;
label variable ER21001         "RELEASE NUMBER"                           ;
label variable ER21002         "2003 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER21016         "# IN FU"                                  ;
label variable ER25001         "RELEASE NUMBER"                           ;
label variable ER25002         "2005 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER25016         "# IN FU"                                  ;
label variable ER36001         "RELEASE NUMBER"                           ;
label variable ER36002         "2007 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER36016         "# IN FU"                                  ;
label variable ER42001         "RELEASE NUMBER"                           ;
label variable ER42002         "2009 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER42016         "# IN FU"                                  ;
label variable ER47301         "RELEASE NUMBER"                           ;
label variable ER47302         "2011 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER47316         "# IN FU"                                  ;
label variable ER53001         "RELEASE NUMBER"                           ;
label variable ER53002         "2013 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER53016         "# IN FU"                                  ;
label variable ER60001         "RELEASE NUMBER"                           ;
label variable ER60002         "2015 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER60016         "# IN FU"                                  ;
label variable ER66001         "RELEASE NUMBER"                           ;
label variable ER66002         "2017 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER66016         "# IN FU"                                  ;
label variable ER72001         "RELEASE NUMBER"                           ;
label variable ER72002         "2019 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER72016         "# IN FU"                                  ;
label variable ER78001         "RELEASE NUMBER"                           ;
label variable ER78002         "2021 FAMILY INTERVIEW (ID) NUMBER"        ;
label variable ER78016         "# IN FU"                                  ;

save "number.dta", replace
