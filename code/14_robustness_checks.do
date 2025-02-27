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

* Just reform (dropped) original
reg rank_indiv rank_hd_exp reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Just reform (dropped) interaction with year
reg rank_indiv rank_hd_exp i.year##reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Just reform (dropped) interaction with cohort
reg rank_indiv rank_hd_exp i.cohort##reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.mod_state_hd_exp [aweight = weight], cluster(state_hd

* Just reform (dropped) interaction with cohort
reg rank_indiv rank_hd_exp i.cohort#reform_exp i.race_hd hisp_hd  ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam ///
adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

coefplot ., keep(year#reform_exp) xlab(1/19) vert  ytitle(Coefficient)

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
twoway (histogram rank_hd_exp if reform_exp==0 & sex == 1, width(5) xlabel(#10) color(blue%30))  ///
       (histogram rank_hd_exp if reform_exp==1 & sex == 1, width(5) xlabel(#10) color(red%30)), ///
       legend(order(1 "Pre-Reform" 2 "Post-Reform")) title("Distribution of Fathers' Ranks for Sons by Reform", size(medlarge))
graph export output/rank_dad_distrib_sons.jpg, replace quality(100) width(1500) height(1000)

* Father-child pairs **********************************

* Just reform, dropped
reg rank_indiv rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Export output
outreg2 using output/test_rel_mob, tex(frag) replace ///
keep(rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label dec(2)

 * Reform + interaction, dropped
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
 i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label dec(2)


* Father-son pairs **********************************

* Just reform, dropped
reg rank_indiv rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(state_hd)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label dec(2)

* Reform + interaction, dropped
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(state_hd)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label dec(2)

* Father-daughter pairs **********************************


* Just reform, dropped
reg rank_indiv rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(state_hd)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label dec(2)

* Reform + interaction, dropped
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(state_hd)

* Export output
outreg2 using output/test_rel_mob, tex(frag) append ///
keep(rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label dec(2)

/* Absolute mobility */

* Father-child pairs, dropped
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Export output
outreg2 using output/test_abs_mob, tex(frag) replace ///
keep(reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label dec(2)

* Father-son pairs, dropped
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd)

* Export output
outreg2 using output/test_abs_mob, tex(frag) append ///
keep(reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label dec(2)


* Father-daughter pairs, dropped
reg abs_mob_indiv reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom avg_num_fam count_wages ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd)


* Export output
outreg2 using output/test_abs_mob, tex(frag) append ///
keep(reform_exp i.race_hd hisp_hd  ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label dec(2)
