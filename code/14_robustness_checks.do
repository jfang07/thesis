* File Name: robustness_checks.do
* Author: Joshua Fang
* Last Updated: 4/1/2024

* Clear environment
clear all

* Get working directory
pwd

* Set working directory
cd ..
cd "Thesis"

* Install packages if needed
*ssc install outreg2
*ssc install _gwtmean

*#1: relcalculate relative mobility results with non-strict inequality
use cleaner_data.dta, clear

/* Relative mobility */

* Mother-child pairs **********************************

* Just reform, dropped
reg rank_indiv2 rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Export output
outreg2 using rel_mob2, tex(frag) replace ///
keep(rank_indiv2 rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label

 * Reform + interaction, dropped
reg rank_indiv2 rank_hd_exp2 reform_exp reform_exp#c.rank_hd_exp2 mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
 i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Export output
outreg2 using rel_mob2, tex(frag) append ///
keep(rank_hd_exp2 reform_exp reform_exp#c.rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label


* Mother-son pairs **********************************

* Just reform, dropped
reg rank_indiv2 rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(state_hd)

* Export output
outreg2 using rel_mob2, tex(frag) append ///
keep(rank_indiv2 rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Mother + interaction, dropped
reg rank_indiv2 rank_hd_exp2 reform_exp reform_exp#c.rank_hd_exp2 mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(state_hd)

* Export output
outreg2 using rel_mob2, tex(frag) append ///
keep(rank_hd_exp2 reform_exp reform_exp#c.rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Mother-daughter pairs **********************************


* Just reform, dropped
reg rank_indiv2 rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(state_hd)

* Export output
outreg2 using rel_mob2, tex(frag) append ///
keep(rank_indiv2 rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

* Reform + interaction, dropped
reg rank_indiv2 rank_hd_exp2 reform_exp reform_exp#c.rank_hd_exp2 mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(state_hd)

* Export output
outreg2 using rel_mob2, tex(frag) append ///
keep(rank_hd_exp2 reform_exp reform_exp#c.rank_hd_exp2 reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

* #2: Placebo test with target population as male-headed, two-parent Family units whose wives
* have less than 12 years of education when the child was under 18

* Load data
use cleaner_test_data.dta, clear

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
reg rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Export output
outreg2 using test_rel_mob, tex(frag) replace ///
keep(rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label

 * Reform + interaction, dropped
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
 i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Export output
outreg2 using test_rel_mob, tex(frag) append ///
keep(rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label


* Father-son pairs **********************************

* Just reform, dropped
reg rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(state_hd)

* Export output
outreg2 using test_rel_mob, tex(frag) append ///
keep(rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Reform + interaction, dropped
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(state_hd)

* Export output
outreg2 using test_rel_mob, tex(frag) append ///
keep(rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Father-daughter pairs **********************************


* Just reform, dropped
reg rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(state_hd)

* Export output
outreg2 using test_rel_mob, tex(frag) append ///
keep(rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

* Reform + interaction, dropped
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(state_hd)

* Export output
outreg2 using test_rel_mob, tex(frag) append ///
keep(rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

/* Absolute mobility */

* Father-child pairs, dropped
reg abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd)

* Export output
outreg2 using test_abs_mob, tex(frag) replace ///
keep(abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label

* Father-son pairs, dropped
reg abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd)

* Export output
outreg2 using test_abs_mob, tex(frag) append ///
keep(abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label


* Father-daughter pairs, dropped
reg abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam count_wages count_wages_hd_exp ///
adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd)


* Export output
outreg2 using test_abs_mob, tex(frag) append ///
keep(abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
age_hd age_hd_sq avg_age_hd_exp avg_age_hd_exp_sq avg_educ_hd_exp avg_educ_mom  avg_num_fam avg_adj_ben4_hd_exp ///
max_adj_ben4_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label
