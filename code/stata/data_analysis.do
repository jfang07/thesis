* File Name: data_analysis.do
* Author: Joshua Fang
* Last Updated: 4/10/2024

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

* Load data
use cleaner_data.dta, clear

* Describe data
d

* Summarize data
sum

/* Relative mobility */

* Mother-child pairs **********************************

* Just reform (dropped)
reg rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

* Export output
outreg2 using rel_mob, tex(frag) replace ///
keep(rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label 

 * Reform + interaction (dropped)
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

* Export output
outreg2 using rel_mob, tex(frag) append ///
keep(rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label 


* Mother-son pairs **********************************

* Just reform, dropped
reg rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(state_hd) 

* Export output
outreg2 using rel_mob, tex(frag) append ///
keep(rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Reform + interaction, dropped
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, ///
cluster(state_hd) 

* Export output
outreg2 using rel_mob, tex(frag) append ///
keep(rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label 

* Mother-daughter pairs **********************************

* Just reform, dropped
reg rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(state_hd) 

* Export output
outreg2 using rel_mob, tex(frag) append ///
keep(rank_indiv rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

* Reform + interaction, dropped
reg rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, ///
cluster(state_hd) 

* Export output
outreg2 using rel_mob, tex(frag) append ///
keep(rank_indiv rank_hd_exp reform_exp reform_exp#c.rank_hd_exp reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label 

/* Absolute mobility */

* Mother-child pairs, dropped
reg abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

* Export output
outreg2 using abs_mob, tex(frag) replace ///
keep(abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label 

* Mother-son pairs, dropped
reg abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
mod_mar_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd) 

* Export output
outreg2 using abs_mob, tex(frag) append ///
keep(abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Mother-daughter pairs, dropped
reg abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd) 

* Export output
outreg2 using abs_mob, tex(frag) append ///
keep(abs_mob_indiv reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

 /* Mechanisms */
 
 * Education *********************************
 
gen hs_grad = 1 if educ >= 12
replace hs_grad = 0 if educ < 12
gen col_grad = 1 if educ >= 16
replace col_grad = 0 if educ < 16

 * Mother-child pairs, HS grad
reg hs_grad reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

 * Mother-child pairs, college grad
reg col_grad reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 
 
 * Mother-child pairs
reg educ reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

* Export output
outreg2 using educ, tex(frag) replace ///
keep(educ reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label

* Mother-son pairs, HS grad
reg hs_grad reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd) 

* Mother-son pairs, college grad
reg col_grad reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd) 

* Mother-son pairs 
reg educ reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd) 

* Export output
outreg2 using educ, tex(frag) append ///
keep(educ reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Mother-daughter pairs, HS grad
reg hs_grad reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd) 

* Mother-daughter pairs, college grad
reg col_grad reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd) 

* Mother-daughter pairs 
reg educ reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd) 

* Export output
outreg2 using educ, tex(frag) append ///
keep(educ reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

* Hours worked by head ****************************************
 
* Mother-child pairs
reg hours_hd reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

* Export output
outreg2 using hours_hd, tex(frag) replace ///
keep(hours_hd reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label

* Mother-son pairs 
reg hours_hd reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd) 

* Export output
outreg2 using hours_hd, tex(frag) append ///
keep(hours_hd reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label 
  
* Mother-daughter pairs * this regression doesn't make sense
reg hours_hd reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd) 

* Export output
outreg2 using hours_hd, tex(frag) append ///
keep(hours_hd reform_exp mar i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

 * Marriage ****************************************
 
 * Mother-child pairs
reg mar reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

* Export output
outreg2 using mar, tex(frag) replace ///
keep(mar reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label 

* Mother-son pairs 
reg mar reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd) 

* Export output
outreg2 using mar, tex(frag) append ///
keep(mar reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Mother-daughter pairs 
reg mar reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd) 

* Export output
outreg2 using mar, tex(frag) append ///
keep(mar reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

* Labor force participation ****************************************
 
 * Mother-child pairs
reg lfp reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

* Export output
outreg2 using lfp, tex(frag) replace ///
keep(lfp reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label 

* Mother-son pairs 
reg lfp reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd) 

* Export output
outreg2 using lfp, tex(frag) append ///
keep(lfp reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label

* Mother-daughter pairs 
reg lfp reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd) 

* Export output
outreg2 using lfp, tex(frag) append ///
keep(lfp reform_exp i.race_hd hisp_hd num_fam_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label

* Family unit size ****************************************

*  Mother-child pairs
reg num_fam_hd reform_exp mar i.race_hd hisp_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight], cluster(state_hd) 

* Export output
outreg2 using num_fam, tex(frag) replace ///
keep(num_fam_hd reform_exp mar i.race_hd hisp_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Pooled) label

* Mother-son pairs 
reg num_fam_hd reform_exp mar i.race_hd hisp_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 1, cluster(state_hd) 

* Export output
outreg2 using num_fam, tex(frag) append ///
keep(num_fam_hd reform_exp mar i.race_hd hisp_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Sons) label
  
* Mother-daughter pairs 
reg num_fam_hd reform_exp mar i.race_hd hisp_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd ///
i.state_hd i.year i.cohort i.mod_state_hd_exp [aweight = weight] if sex == 2, cluster(state_hd) 

* Export output
outreg2 using num_fam, tex(frag) append ///
keep(num_fam_hd reform_exp mar i.race_hd hisp_hd age age_sq ///
avg_age_hd_exp avg_age_hd_exp_sq avg_educ_mom avg_num_fam count_wages count_wages_hd_exp ///
 mod_mar_hd_exp adj_ben4_hd  adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd) ///
ctitle(Daughters) label