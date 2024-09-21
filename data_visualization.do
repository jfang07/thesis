* File Name: data_visualization.do
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

**# Data exploration -----------------------
sum 
bys reform_exp: sum
bys reform_exp sex: sum


* Generate summary statistics
bysort reform_exp:outreg2 [aw=weight] using summary, tex(frag) replace sum(log) ///
keep(rank_indiv abs_mob_indiv count_wages educ lfp mar hours_hd avg_adj_indiv_wages avg_adj_wages_hd_exp ///
num_fam_hd age rank_hd_exp avg_age_hd_exp avg_num_fam avg_educ_mom mod_mar_hd_exp ///
count_wages_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd ///
recip_rate_hd unemp_hd) ///
eqkeep(N mean sd) label

* Calculate t-statistics
foreach var in rank_indiv abs_mob_indiv count_wages educ lfp mar hours_hd avg_adj_indiv_wages ///
avg_adj_wages_hd_exp num_fam_hd age rank_hd_exp avg_age_hd_exp avg_num_fam avg_educ_mom mod_mar_hd_exp ///
count_wages_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd {
	di "`var'"
	ttest `var', by(reform_exp) unequal 
}


* Mother-son pairs
bysort reform_exp: outreg2 [aw=weight] using summary_sons.tex if sex == 1, ///
tex(frag) replace sum(log) ///
keep(rank_indiv abs_mob_indiv count_wages educ lfp mar hours_hd avg_adj_indiv_wages avg_adj_wages_hd_exp ///
num_fam_hd age rank_hd_exp avg_age_hd_exp avg_num_fam avg_educ_mom mod_mar_hd_exp ///
count_wages_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd ///
recip_rate_hd unemp_hd) ///
eqkeep(N mean sd) label

* Calculate t-statistics
foreach var in rank_indiv abs_mob_indiv count_wages educ lfp mar hours_hd avg_adj_indiv_wages ///
avg_adj_wages_hd_exp num_fam_hd age rank_hd_exp avg_age_hd_exp avg_num_fam avg_educ_mom mod_mar_hd_exp ///
count_wages_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd {
	di "`var'"
	ttest `var' if sex == 1, by(reform_exp) unequal 
}


* Mother-son pairs
bysort reform_exp: outreg2 [aw=weight] using summary_daughters.tex if sex == 2, ///
tex(frag) replace sum(log) ///
keep(rank_indiv abs_mob_indiv count_wages educ lfp mar hours_hd avg_adj_indiv_wages avg_adj_wages_hd_exp ///
num_fam_hd age rank_hd_exp avg_age_hd_exp avg_num_fam avg_educ_mom mod_mar_hd_exp ///
count_wages_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd ///
recip_rate_hd unemp_hd) ///
eqkeep(N mean sd) label

* Calculate t-statistics
foreach var in rank_indiv abs_mob_indiv count_wages educ lfp mar hours_hd avg_adj_indiv_wages ///
avg_adj_wages_hd_exp num_fam_hd age rank_hd_exp avg_age_hd_exp avg_num_fam avg_educ_mom mod_mar_hd_exp ///
count_wages_hd_exp adj_ben4_hd adj_eitc3_hd povrate_hd recip_rate_hd unemp_hd {
	di "`var'"
	ttest `var' if sex == 2, by(reform_exp) unequal 
}

**# Data visualization ----------------------

* Generate necessary averages/percentages for plotting
* Still need to decide on cohort vs. year
egen avg_abs_mob_indiv = wtmean(abs_mob_indiv*100), weight(weight) by(cohort)
egen avg_rank_indiv = wtmean(rank_indiv), weight(weight) by(cohort)
egen avg_rank_hd_exp = wtmean(rank_hd_exp), weight(weight) by(cohort)
egen avg_abs_mob_indiv_yr = wtmean(abs_mob_indiv*100), weight(weight) by(year)
egen avg_rank_indiv_yr = wtmean(rank_indiv), weight(weight) by(year)
egen avg_rank_hd_exp_yr = wtmean(rank_hd_exp), weight(weight) by(year)
egen avg_cur_particip = wtmean(cur_particip*100), weight(weight) by(year)
egen avg_mar = wtmean(mar*100), weight(weight) by(year)
egen avg_abs_mob_indiv_sex = wtmean(abs_mob_indiv*100), weight(weight) by(cohort sex)
egen avg_rank_indiv_sex = wtmean(rank_indiv), weight(weight) by(cohort sex)
egen avg_abs_mob_indiv_sex_yr = wtmean(abs_mob_indiv*100), weight(weight) by(year sex)
egen avg_rank_indiv_sex_yr = wtmean(rank_indiv), weight(weight) by(year sex)
egen avg_cur_particip_sex = wtmean(cur_particip*100), weight(weight) by(year sex)
egen avg_mar_sex = wtmean(mar*100), weight(weight) by(year sex)
egen avg_wag = wtmean(adj_indiv_wages*100), weight(weight) by(age)
egen avg_wag_sex = wtmean(adj_indiv_wages*100), weight(weight) by(age sex)
bys year: egen n = count(id)
bys year sex: egen n_sex = count(id)

* Generate necessary percentages for plotting
egen pct_wage_obs_sex = wtmean((adj_indiv_wages > 0)*100), weight(weight) by (year sex)
bys year sex: egen ct_lfp = total(lfp*weight) 
bys year sex: egen ct = total(weight)
gen pct_lfp_sex = ct_lfp/ct*100

* Plot number of observations by year
twoway line n_sex year if sex == 1, sort || ///
line n_sex year if sex == 2, sort || ///
line n year, legend(order(1 "Sons" 2 "Daughters" 3 "Pooled")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ytitle("Counts") ///
title("Number of Observations in the Data Set By Year", size(medlarge))

* Export plot
graph export n.jpg, replace quality(100) width(1500) height(1000)

* Plot distribution of cohort counts
hist cohort, freq ///
xlabel(#10) xtitle("Cohort Birth Year") ylabel(#10) ytitle("Counts") ///
title("Distribution of Observations by Cohort", ///
size(medlarge))

* Export plot
graph export cohort.jpg, replace quality(100) width(1500) height(1000)

* Distribution of wage observation frequencies
hist count_wages, freq ///
xlabel(#10)  title("Distribution of Children's Wage Observation Frequencies", size(medlarge)) ///
ytitle("Counts")
graph export count_wages.jpg, replace quality(100) width(1500) height(1000)


* Distribution of wage observation frequencies for mothers
hist count_wages_hd_exp, freq ///
xlabel(#10)  title("Distribution of Mothers' Wage Observation Frequencies", size(medlarge)) ///
ytitle("Counts")
graph export count_wages_hd_exp.jpg, replace quality(100) width(1500) height(1000)

* Distribution of inclusive ranks
twoway (histogram rank_indiv if reform_exp==0, width(5) color(blue%30) xlabel(#10)) ///        
       (histogram rank_indiv if reform_exp ==1, width(5) color(red%30) xlabel(#10)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Distribution of Children's Ranks by Reform", size(medlarge))
graph export rank_distrib.jpg, replace quality(100) width(1500) height(1000)  

* Distribution of exclusive ranks
twoway (histogram rank_indiv2 if reform_exp==0, width(5) color(blue%30) xlabel(#10)) ///        
       (histogram rank_indiv2 if reform_exp ==1, width(5) color(red%30) xlabel(#10)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Alternative Distribution of Children's Ranks by Reform", size(medlarge))
graph export rank_distrib2.jpg, replace quality(100) width(1500) height(1000)  
	   
* Distribution of mothers' inclusive ranks
twoway (histogram rank_hd_exp if reform_exp==0, width(5) xlabel(#10) color(blue%30))  ///        
       (histogram rank_hd_exp if reform_exp==1, width(5) xlabel(#10) color(red%30)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Distribution of Mothers' Ranks by Reform", size(medlarge))
graph export rank_mom_distrib.jpg, replace quality(100) width(1500) height(1000)

* Distribution of mothers' exclusive ranks
twoway (histogram rank_hd_exp2 if reform_exp==0, width(5) xlabel(#10) color(blue%30))  ///        
       (histogram rank_hd_exp2 if reform_exp==1, width(5) xlabel(#10) color(red%30)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform")) title("Alternative Distribution of Mothers' Ranks by Reform", size(medlarge))
graph export rank_mom_distrib2.jpg, replace quality(100) width(1500) height(1000)

* Plot race by reform
* Need to tweak in graph editor to make title fit
catplot reform_exp race_hd [aw=weight], ///
percent(reform_exp) ///
var1opts(relabel(1 "Pre-Reform" 2 "Post-Reform")) ///
title("Weighted Distribution of Race for Child's Household Head by Reform", ///
size(medsmall)) blabel(bar, format(%4.1f)) asyvars

* Export plot
graph export race_by_reform.jpg, replace quality(100) width(1500) height(1000)

* Plot Hispanicity by reform
catplot reform_exp hisp_hd [aw=weight], ///
percent(reform_exp) ///
var1opts(relabel(1 "Pre-Reform" 2 "Post-Reform")) ///
var2opts(relabel(1 "Not Hispanic" 2 "Hispanic")) ///
title("Weighted Distribution of Hispanicity for Child's Household Head by Reform", ///
size(medsmall)) blabel(bar, format(%4.1f)) asyvars

* Export plot
graph export hisp_by_reform.jpg, replace quality(100) width(1500) height(1000)

* Mother-child pairs **********************************

* Plot individual ranks over cohort birth years
twoway line avg_rank_indiv cohort, sort || ///
line avg_rank_hd_exp cohort, sort ///
legend(label(1 "Child") label(2 "Mother")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Percentile Rank", size(medium)) ///
title("Weighted Mean Percentile Ranks Over Cohort Birth Years", ///
size(medlarge))

* Plot individual ranks over time
twoway line avg_rank_indiv_yr year, sort || ///
line avg_rank_hd_exp_yr year, sort ///
legend(label(1 "Child") label(2 "Mother")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Percentile Rank", size(medium)) ///
title("Weighted Mean Percentile Ranks Over Time for Mother-Child Pairs", ///
size(medium))

* Export plot
graph export ranks.jpg, replace quality(100) width(1500) height(1000)


* Plot individual absolute mobility over time for mother-child pairs
* Still need to decide on cohort vs. year
twoway line avg_abs_mob_indiv cohort, sort xlabel(#10) xtitle("Cohort Birth Year") ylabel(#10) ///
ytitle("Weighted Absolute Mobility Rate (%)") ///
title("Weighted Absolute Mobility Rate Over Cohort Birth Years", ///
size(medlarge))

* Plot AFDC/TANF participation rate over time
twoway line avg_cur_particip year, sort ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted AFDC/TANF Participation Rate (%)", size(medsmall)) ///
title("Weighted AFDC/TANF Participation Rate Over Time", size(medlarge))

* Export plot
graph export particip.jpg, replace quality(100) width(1500) height(1000)

* Plot marriage rate over time
twoway line avg_mar year, sort ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Marriage Rate (%)", size(medium)) ///
title("Weighted Marriage Rate Over Time", size(medlarge))

* Export plot
graph export mar.jpg, replace quality(100) width(1500) height(1000)


* Plot average wage over life course
twoway line avg_wag age, sort ///
xlabel(#10) xtitle("Age") ylabel(#10) ///
ytitle("Weighted Average Wages (2017 $)", size(medium)) ///
title("Weighted Average Wages Over the Life Course", size(medlarge))

* Plot race
graph bar [aw=weight], over(race_hd, ///
relabel(1 "White" 2 "Black" 3 "Indigenous/Latino" 4 "AAPI" 5 "Other")) ///
ylabel(#10) title("Weighted Distribution of Race ", ///
size(medlarge))

* Export plot
graph export race.jpg, replace quality(100) width(1500) height(1000)

* Plot Hispanicity
graph bar [aw=weight], over(hisp_hd, relabel(1 "Not Hispanic" 2 "Hispanic")) ///
title("Weighted Distribution of Hispanicity ", ///
size(medlarge))

* Export plot
graph export hisp.jpg, replace quality(100) width(1500) height(1000)


* Disaggregating by adult child sex **********************************

* Plot individual ranks over time for mother-son pairs
twoway line avg_rank_indiv_sex_yr year if sex == 1, sort || ///
line avg_rank_hd_exp_yr year if sex == 1, sort ///
legend(label(1 "Son") label(2 "Mother")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Percentile Rank", size(medium)) ///
title("Weighted Mean Percentile Ranks Over Time for Mother-Son Pairs", ///
size(medium))

* Export plot
graph export ranks_sons.jpg, replace quality(100) width(1500) height(1000)


* Plot individual ranks over time for mother-daughter pairs
twoway line avg_rank_indiv_sex_yr year if sex == 2, sort || ///
line avg_rank_hd_exp_yr year if sex == 2, sort ///
legend(label(1 "Daughter") label(2 "Mother")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Percentile Rank", size(medium)) ///
title("Weighted Mean Percentile Ranks Over Time for Mother-Daughter Pairs", ///
size(medium))
* There appears to be an increasing trend. How come?

* Export plot
graph export ranks_daughters.jpg, replace quality(100) width(1500) height(1000)

* Plot individual absolute mobility rate over time pairs by sex
twoway line avg_abs_mob_indiv_sex_yr year if sex == 1, sort || ///
line avg_abs_mob_indiv_sex_yr year if sex == 2, sort || ///
line avg_abs_mob_indiv_yr year, sort ///
legend(order(1 "Sons" 2 "Daughters" 3 "Pooled")) ///
xlabel(#10) xtitle("Year") ///
ylabel(#10) ///
ytitle("Weighted Absolute Mobility Rate (%)", size(medsmall)) ///
title("Weighted Absolute Mobility Rate Over Time", ///
size(medlarge))

* Export plot
graph export abs_mob_by_sex.jpg, replace quality(100) width(1500) height(1000)

// Anomaly is due to small number of observations.

* Plot AFDC/TANF participation rate over time by sex
twoway line avg_cur_particip_sex year if sex == 1, sort || ///
line avg_cur_particip_sex year if sex == 2, sort || ///
line avg_cur_particip year, sort ///
legend(order(1 "Sons" 2 "Daughters" 3 "Pooled")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted AFDC/TANF Participation Rate (%)", size(medsmall)) ///
title("Weighted AFDC/TANF Participation Rate Over Time", ///
size(medlarge))

* Export plot
graph export particip_by_sex.jpg, replace quality(100) width(1500) height(1100)

* Plot average wage over life course
twoway line avg_wag_sex age if sex == 1, sort || ///
line avg_wag_sex age if sex == 2, sort ///
xlabel(#10) xtitle("Age") ylabel(#10) ///
ytitle("Weighted Average Wages (2017 $)", size(medium)) ///
title("Weighted Average Wages Over the Life Course", size(medsmall))


* Plot marriage rate over time by sex
twoway line avg_mar_sex year if sex == 1, sort || ///
line avg_mar_sex year if sex == 2, sort  ///
legend(label(1 "Sons") label(2 "Daughters")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Marriage Rate (%)", size(medium)) ///
title("Weighted Marriage Rate Over Time by Sex", ///
size(medlarge))

* Export plot
graph export mar_by_sex.jpg, replace quality(100) width(1500) height(1000)

* Plot labor force participation rate by sex over time
twoway line pct_lfp_sex year if sex == 1, sort || ///
line pct_lfp_sex year if sex == 2, sort  ///
legend(label(1 "Sons") label(2 "Daughters")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Labor Force Participation Rate (%)", size(medsmall)) ///
title("Weighted Labor Force Participation Rate Over Time by Sex", ///
size(medlarge))

* Export plot
graph export lfp_by_sex.jpg, replace quality(100) width(1500) height(1000)

* Plot wage observation rate by sex over time
twoway line pct_wage_obs_sex year if sex == 1, sort || ///
line pct_wage_obs_sex year if sex == 2, sort  ///
legend(label(1 "Sons") label(2 "Daughters")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Positive Wage Observation Rate (%)", size(medsmall)) ///
title("Weighted Positive Wage Observation Rate Over Time by Sex", ///
size(medlarge))

* Export plot
graph export wage_obs_by_sex.jpg, replace quality(100) width(1500) height(1000)

* Export plot
graph export hisp_by_sex.jpg, replace quality(100) width(1500) height(1000)

* Plot race by reform for sons
catplot reform_exp race_hd [aw=weight] if sex == 1, ///
percent(reform_exp) ///
var1opts(relabel(1 "Pre-Reform" 2 "Post-Reform")) ///
title("Weighted Distribution of Race for Sons by Reform", ///
size(medium)) blabel(bar, format(%4.1f)) asyvars

* Export plot
graph export race_by_reform_sons.jpg, replace quality(100) width(1500) height(1000)

* Plot Hispanicity by reform for sons
catplot reform_exp hisp_hd [aw=weight] if sex == 1, ///
percent(reform_exp) ///
var1opts(relabel(1 "Pre-Reform" 2 "Post-Reform")) ///
var2opts(relabel(1 "Not Hispanic" 2 "Hispanic")) ///
title("Weighted Distribution of Hispanicity for Sons by Reform", ///
size(medium)) blabel(bar, format(%4.1f)) asyvars

* Export plot
graph export hisp_by_reform_sons.jpg, replace quality(100) width(1500) height(1000)

* Plot race by reform for daughters
* Need to tweak in graph editor to make sure title fits
catplot reform_exp race_hd [aw=weight] if sex == 2, ///
percent(reform_exp) ///
var1opts(relabel(1 "Pre-Reform" 2 "Post-Reform")) ///
title("Weighted Distribution of Race for Daughter's Household Head by Reform", ///
size(medsmall)) blabel(bar, format(%4.1f)) asyvars

* Export plot
graph export race_by_reform_daughters.jpg, replace quality(100) width(1500) height(1000)

* Plot Hispanicity by reform for daughters
* Need to tweak in graph editor to make sure the title fits
catplot reform_exp hisp_hd [aw=weight] if sex == 2, ///
percent(reform_exp) ///
var1opts(relabel(1 "Pre-Reform" 2 "Post-Reform")) ///
var2opts(relabel(1 "Not Hispanic" 2 "Hispanic")) ///
title("Weighted Distribution of Hispanicity for Daughter's Household Head by Reform", ///
size(medsmall)) blabel(bar, format(%4.1f)) asyvars

* Export plot
graph export hisp_by_reform_daughters.jpg, replace quality(100) width(1500) height(1000)

* Distribution of inclusive ranks for sons
twoway (histogram rank_indiv if reform_exp==0 & sex == 1, width(5) color(blue%30) xlabel(#10)) ///        
       (histogram rank_indiv if reform_exp ==1 & sex == 1, width(5) color(red%30) xlabel(#10)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Distribution of Sons' Ranks by Reform", size(medlarge))
graph export rank_distrib_sons.jpg, replace quality(100) width(1500) height(1000)  

* Distribution of exclusive ranks for sons
twoway (histogram rank_indiv2 if reform_exp==0 & sex == 1, width(5) color(blue%30) xlabel(#10)) ///        
       (histogram rank_indiv2 if reform_exp ==1 & sex == 1, width(5) color(red%30) xlabel(#10)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Alternative Distribution of Sons' Ranks by Reform", size(medlarge))
graph export rank_distrib2_sons.jpg, replace quality(100) width(1500) height(1000)  
	   
* Distribution of mothers' inclusive ranks for sons
twoway (histogram rank_hd_exp if reform_exp==0 & sex == 1, width(5) xlabel(#10) color(blue%30))  ///        
       (histogram rank_hd_exp if reform_exp==1 & sex == 1, width(5) xlabel(#10) color(red%30)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Distribution of Mothers' Ranks for Sons by Reform", size(medlarge))
graph export rank_mom_distrib_sons.jpg, replace quality(100) width(1500) height(1000)

* Distribution of mothers' exclusive ranks for sons
twoway (histogram rank_hd_exp2 if reform_exp==0 & sex == 1, width(5) xlabel(#10) color(blue%30))  ///        
       (histogram rank_hd_exp2 if reform_exp==1 & sex == 1, width(5) xlabel(#10) color(red%30)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform")) title("Alternative Distribution of Mothers' Ranks for Sons by Reform", size(medlarge))
graph export rank_mom_distrib2_sons.jpg, replace quality(100) width(1500) height(1000)

* Distribution of inclusive ranks for daughters
twoway (histogram rank_indiv if reform_exp==0 & sex == 2, width(5) color(blue%30) xlabel(#10)) ///        
       (histogram rank_indiv if reform_exp ==1 & sex == 2, width(5) color(red%30) xlabel(#10)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Distribution of Daughters' Ranks by Reform", size(medlarge))
graph export rank_distrib_daughters.jpg, replace quality(100) width(1500) height(1000)  

* Distribution of exclusive ranks for daughters
twoway (histogram rank_indiv2 if reform_exp==0 & sex == 2, width(5) color(blue%30) xlabel(#10)) ///        
       (histogram rank_indiv2 if reform_exp ==1 & sex == 2, width(5) color(red%30) xlabel(#10)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Alternative Distribution of Daughters' Ranks by Reform", size(medlarge))
graph export rank_distrib2_daughters.jpg, replace quality(100) width(1500) height(1000)  
	   
* Distribution of mothers' inclusive ranks for daughters
twoway (histogram rank_hd_exp if reform_exp==0 & sex == 2, width(5) xlabel(#10) color(blue%30))  ///        
       (histogram rank_hd_exp if reform_exp==1 & sex == 2, width(5) xlabel(#10) color(red%30)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform" )) title("Distribution of Mothers' Ranks for Daughters by Reform", size(medlarge))
graph export rank_mom_distrib_daughters.jpg, replace quality(100) width(1500) height(1000)

* Distribution of mothers' exclusive ranks for daughters
twoway (histogram rank_hd_exp2 if reform_exp==0 & sex == 2, width(5) xlabel(#10) color(blue%30))  ///        
       (histogram rank_hd_exp2 if reform_exp==1 & sex == 2, width(5) xlabel(#10) color(red%30)), ///   
       legend(order(1 "Pre-Reform" 2 "Post-Reform")) title("Alternative Distribution of Mothers' Ranks for Daughters by Reform", size(medlarge))
graph export rank_mom_distrib2_daughters.jpg, replace quality(100) width(1500) height(1000)