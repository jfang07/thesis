* File Name: robustness_checks.do
* Author: Joshua Fang
* Last Updated: 4/1/2024

* Clear environment
clear all

* Get working directory
pwd

* Install packages if needed
*ssc install outreg2
*ssc install _gwtmean
*ssc install coefplot

*#1: event study and pre-trends
use data/cleaner_data.dta, clear

/* Relative mobility */

* Mother-child pairs **********************************


* Just reform  original
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight], cluster(mod_state_hd_exp)

* Interacted FEs
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year##i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight], cluster(mod_state_hd_exp)

* By age
reg avg_rank_indiv avg_rank_hd_exp reform_exp#reform_age i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob_es, tex(frag) replace ///
keep(avg_rank_hd_exp reform_exp#reform_age) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)


* Mother-son pairs **********************************

* Just reform  original
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Interacted FEs
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year##i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* By age
reg avg_rank_indiv avg_rank_hd_exp reform_exp#reform_age i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob_es, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp#reform_age) ///
ctitle(Sons) label dec(2)


* Mother-daughter pairs **********************************

* Just reform  original
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Interacted FEs
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year##i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* By age
reg avg_rank_indiv avg_rank_hd_exp reform_exp#reform_age i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.mod_state_hd_exp i.state_hd i.cohort  [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/rel_mob_es, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp#reform_age) ///
ctitle(Daughters) label dec(2)

/* Absolute mobility */

* Mother-child pairs
reg abs_mob_indiv reform_exp#reform_age  i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/abs_mob_es, tex(frag) replace ///
keep(reform_exp#reform_age) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs
reg abs_mob_indiv reform_exp#reform_age i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd  i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/abs_mob_es, tex(frag) append ///
keep(reform_exp#reform_age) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs
reg abs_mob_indiv reform_exp#reform_age i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/abs_mob_es, tex(frag) append ///
keep(reform_exp#reform_age) ///
ctitle(Daughters) label dec(2)



/* Log wage measures */

* Mother-child pairs
reg lwage reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lwage_es, tex(frag) replace ///
keep(reform_exp) ///
ctitle(Pooled) label dec(2) ///
addnote (Note: all regressions include covariates, fixed effects, and error-clustering at the level of the mother's modal state during the exposure period.)

* Mother-son pairs
reg lwage reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd  i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lwage_es, tex(frag) append ///
keep(reform_exp) ///
ctitle(Sons) label dec(2)

* Mother-daughter pairs
reg lwage reform_exp reform_exp1 reform_exp2 reform_exp3 reform_exp4 reform_exp5 reform_exp6 reform_exp7 reform_exp8 reform_exp9 reform_exp10 i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/lwage_es, tex(frag) append ///
keep(reform_exp) ///
ctitle(Daughters) label dec(2)

* By age
reg lwage reform_exp#reform_age i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
 adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)



* #2: Placebo test with target population as male-headed, two-parent Family units whose wives
* have less than 12 years of education when the child was under 18

* Load data
use data/cleaner_test_data.dta, clear

* Describe data
d

* Summarize data
sum

/* Relative mobility */

* Distribution of mothers' ranks for sons
twoway (histogram avg_rank_hd_exp if reform_exp==0 & sex == 1, width(5) xlabel(#10) color(blue%30))  ///
       (histogram avg_rank_hd_exp if reform_exp==1 & sex == 1, width(5) xlabel(#10) color(red%30)), ///
       legend(order(1 "Pre-Reform" 2 "Post-Reform")) title("Distribution of Fathers' Ranks for Sons by Reform", size(medlarge))
graph export output/rank_dad_distrib_sons.jpg, replace quality(100) width(1500) height(1000)

* Father-child pairs **********************************

* Just reform
reg avg_rank_indiv avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/test_rel_mob, tex(frag) replace ///
keep(avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label dec(2)

 * Reform + interaction
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
 i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label dec(2)


* Father-son pairs **********************************

* Just reform
reg avg_rank_indiv avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label dec(2)

* Reform + interaction
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label dec(2)

* Father-daughter pairs **********************************


* Just reform
reg avg_rank_indiv avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label dec(2)

* Reform + interaction
reg avg_rank_indiv avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(mod_state_hd_exp)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(avg_rank_hd_exp reform_exp reform_exp#c.avg_rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label dec(2)

/* Absolute mobility */

* Father-child pairs
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight], cluster(mod_state_hd_exp)

* Export output
outreg2 using output/test_abs_mob, tex(frag) replace ///
keep(reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label dec(2)

* Father-son pairs
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(mod_state_hd_exp)

* Export output
outreg2 using output/test_abs_mob, tex(frag) append ///
keep(reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label dec(2)


* Father-daughter pairs
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.year i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(mod_state_hd_exp)


* Export output
outreg2 using output/test_abs_mob, tex(frag) append ///
keep(reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label dec(2)
