* File Name: data_analysis.do
* Author: Joshua Fang
* Last Updated: 4/10/2024

* Clear environment
clear all

* Get working directory
pwd

* Install packages if needed
*ssc install outreg2
*ssc install _gwtmean

* Load data
use data/cleaner_data.dta, clear

* Describe data
d

* Summarize data
sum

/* Relative mobility */

* Mother-child pairs **********************************

* Just reform
reg avg_rank_indiv avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob, tex(frag) replace ///
keep(avg_rank_hd_exp reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

 * Reform + interaction
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp) ///
ctitle(Pooled) label dec(2)

* Only rank
reg avg_rank_indiv reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rank, tex(frag) replace ///
keep(reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)



* Mother-son pairs **********************************

* Just reform
reg avg_rank_indiv avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp) ///
ctitle(Sons) label dec(2)

* Reform + interaction
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp) ///
ctitle(Sons) label dec(2)

* Just rank
reg avg_rank_indiv reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rank, tex(frag) append ///
keep(reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs **********************************

* Just reform
reg avg_rank_indiv avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp) ///
ctitle(Daughters) label dec(2)

* Reform + interaction
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp) ///
ctitle(Daughters) label dec(2)

* Just rank
reg avg_rank_indiv reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rank, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp) ///
ctitle(Daughters) label dec(2)


/* Absolute mobility */

* Mother-child pairs
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/abs_mob, tex(frag) replace ///
keep(reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/abs_mob, tex(frag) append ///
keep(reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/abs_mob, tex(frag) append ///
keep(reform_exp) ///
ctitle(Daughters) label dec(2)

/* Log wage measures */

* Mother-child pairs
reg lwage reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lwage, tex(frag) replace ///
keep(reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs
reg lwage reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lwage, tex(frag) append ///
keep(reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs
reg lwage reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lwage, tex(frag) append ///
keep(reform_exp) ///
ctitle(Daughters) label dec(2)


 /* Mechanisms */

 * Education *********************************

gen hs_grad = 1 if educ >= 12
replace hs_grad = 0 if educ < 12
gen col_grad = 1 if educ >= 16
replace col_grad = 0 if educ < 16

 * Mother-child pairs, HS grad
reg hs_grad reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/hs_grad, tex(frag) replace ///
keep(hs_grad reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

 * Mother-child pairs, college grad
reg col_grad reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/col_grad, tex(frag) replace ///
keep(col_grad reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

 * Mother-child pairs
reg educ reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/educ, tex(frag) replace ///
keep(educ reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs, HS grad
reg hs_grad reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/hs_grad, tex(frag) append ///
keep(hs_grad reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-son pairs, college grad
reg col_grad reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/col_grad, tex(frag) append ///
keep(col_grad reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-son pairs
reg educ reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/educ, tex(frag) append ///
keep(educ reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs, HS grad
reg hs_grad reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/hs_grad, tex(frag) append ///
keep(hs_grad reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs, college grad
reg col_grad reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/col_grad, tex(frag) append ///
keep(col_grad reform_exp) ///
ctitle(Daughters) label dec(2)


* Mother-daughter pairs
reg educ reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/educ, tex(frag) append ///
keep(educ reform_exp) ///
ctitle(Daughters) label dec(2)

* Hours worked by head ****************************************

* Mother-child pairs
reg hours_hd reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/hours_hd, tex(frag) replace ///
keep(reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs
reg hours_hd reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/hours_hd, tex(frag) append ///
keep(reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs * this regression doesn't make sense
reg hours_hd reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/hours_hd, tex(frag) append ///
keep(reform_exp) ///
ctitle(Daughters) label dec(2)

 * Marriage ****************************************

 * Mother-child pairs
reg mar reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/mar, tex(frag) replace ///
keep(reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs
reg mar reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/mar, tex(frag) append ///
keep(reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs
reg mar reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/mar, tex(frag) append ///
keep(reform_exp) ///
ctitle(Daughters) label dec(2)

* Labor force participation ****************************************

 * Mother-child pairs
reg lfp reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lfp, tex(frag) replace ///
keep(reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs
reg lfp reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lfp, tex(frag) append ///
keep(reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs
reg lfp reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lfp, tex(frag) append ///
keep(reform_exp) ///
ctitle(Daughters) label dec(2)

* Family unit size ****************************************

*  Mother-child pairs
reg num_fam_hd reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/num_fam_hd, tex(frag) replace ///
keep(reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs
reg num_fam_hd reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/num_fam_hd, tex(frag) append ///
keep(reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs
reg num_fam_hd reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.cohort i.mod_state_hd_exp i.year i.state_hd  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/num_fam_hd, tex(frag) append ///
keep(reform_exp) ///
ctitle(Daughters) label dec(2)
