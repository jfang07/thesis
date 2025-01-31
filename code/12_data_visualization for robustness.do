* File Name: data_visualization.do
* Author: Joshua Fang
* Last Updated: 3/30/2024

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
use data/test_data.dta, clear

* Describe data
d

**# Data exploration -----------------------
sum
bys reform_exp sex: sum

* Generate summary statistics
bysort reform_exp:outreg2 [aw=weight] using summary2, tex(frag) replace sum(log) ///
keep(rank_indiv abs_mob_indiv educ lfp mar hours_hd avg_adj_indiv_wages ///
num_fam_hd age rank_dad avg_age_dad avg_num_fam avg_educ_dad mod_mar_dad ///
avg_adj_ben4_dad max_adj_ben4_dad adj_ben4_hd adj_eitc3_hd povrate_hd ///
recip_rate_hd unemp_hd) ///
eqkeep(N mean sd) label

* Father-son pairs
bysort reform_exp: outreg2 [aw=weight] using summary_sons2.tex if sex == 1, ///
tex(frag) replace sum(log) ///
keep(rank_indiv abs_mob_indiv_sex educ lfp mar hours_hd avg_adj_indiv_wages ///
num_fam_hd age rank_dad avg_age_dad avg_num_fam avg_educ_dad mod_mar_dad ///
avg_adj_ben4_dad max_adj_ben4_dad adj_ben4_hd adj_eitc3_hd povrate_hd ///
recip_rate_hd unemp_hd) ///
eqkeep(N mean sd) label

* Father-son pairs
bysort reform_exp: outreg2 [aw=weight] using summary_daughters2.tex if sex == 2, ///
tex(frag) replace sum(log) ///
keep(rank_indiv abs_mob_indiv_sex educ lfp mar hours_hd avg_adj_indiv_wages ///
num_fam_hd age rank_dad avg_age_dad avg_num_fam avg_educ_dad mod_mar_dad ///
avg_adj_ben4_dad max_adj_ben4_dad adj_ben4_hd adj_eitc3_hd povrate_hd ///
recip_rate_hd unemp_hd) ///
eqkeep(N mean sd) label

**# Data visualization ----------------------

* Generate necessary averages for plotting
egen avg_abs_mob = wtmean(abs_mob), weight(weight) by(year)
egen avg_abs_mob_indiv = wtmean(abs_mob_indiv), weight(weight) by(year)
*egen avg_rank = wtmean(rank), weight(weight) by(year)
egen avg_rank_dad = wtmean(rank_dad), weight(weight) by(year)
egen avg_rank_indiv = wtmean(rank_indiv), weight(weight) by(year)
egen avg_cur_particip = wtmean(cur_particip*100), weight(weight) by(year)
egen avg_mar = wtmean(mar*100), weight(weight) by(year)
egen avg_abs_mob_indiv_sex = wtmean(abs_mob_indiv_sex), weight(weight) by(year sex)
egen avg_abs_mob_sex = wtmean(abs_mob_sex), weight(weight) by(year sex)
*egen avg_rank_sex = wtmean(rank), weight(weight) by(year sex)
egen avg_rank_indiv_sex = wtmean(rank_indiv), weight(weight) by(year sex)
egen avg_rank_dad_sex = wtmean(rank_dad), weight(weight) by(year sex)
egen avg_cur_particip_sex = wtmean(cur_particip*100), weight(weight) by(year sex)
egen avg_mar_sex = wtmean(mar*100), weight(weight) by(year sex)
egen avg_wag = wtmean(adj_indiv_wages*100), weight(weight) by(age)
egen avg_wag_sex = wtmean(adj_indiv_wages*100), weight(weight) by(age sex)

* Generate necessary percentages for plotting
bys year sex: egen ct_wage_obs = total((adj_indiv_wages > 0)*weight)
bys year sex: egen ct = total(weight)
gen pct_wage_obs_sex = ct_wage_obs/ct*100
bys year sex: egen ct_lfp = total(lfp*weight)
gen pct_lfp_sex = ct_lfp/ct*100

* Father-child pairs **********************************

* Plot ranks over time
*twoway line avg_rank year, sort || ///
*line avg_rank_dad year, sort ///
*legend(label(1 "Adult Child") label(2 "Father")) ///
*xlabel(#10) xtitle("Year") ylabel(#10) ///
*ytitle("Weighted Mean Percentile Rank", size(small)) ///
*title("Weighted Mean Percentile Ranks Over Time for Father-Child Pairs", ///
*size(medium))

* Plot individual ranks over time
twoway line avg_rank_indiv year, sort || ///
line avg_rank_dad year, sort ///
legend(label(1 "Adult Child") label(2 "Father")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Percentile Rank", size(small)) ///
title("Weighted Mean Percentile Ranks Over Time for Father-Child Pairs", ///
size(medium))

* Export plot
graph export output/ranks_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot absolute mobility over time for Father-child pairs
twoway line avg_abs_mob year, sort xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Absolute Mobility Rate (%)") ///
title("Weighted Mean Absolute Mobility Rate Over Time for Father-Child Pairs", ///
size(medium))

* Plot individual absolute mobility over time for Father-child pairs
twoway line avg_abs_mob_indiv year, sort xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Absolute Mobility Rate (%)") ///
title("Weighted Mean Absolute Mobility Rate Over Time for Father-Child Pairs", ///
size(medium))

* Export plot
graph export output/abs_mob_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot AFDC/TANF participation rate over time
twoway line avg_cur_particip year, sort ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted AFDC/TANF Participation Rate (%)", size(medsmall)) ///
title("Weighted AFDC/TANF Participation Rate Over Time", size(medsmall))

* Export plot
graph export output/particip_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot marriage rate over time
twoway line avg_mar year, sort ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Marriage Rate (%)", size(medium)) ///
title("Weighted Marriage Rate Over Time", size(medium))

* Export plot
graph export output/mar_test_rob2.jpg, replace quality(100) width(1500) height(1000)


* Plot average wage over life course
twoway line avg_wag age, sort ///
xlabel(#10) xtitle("Age") ylabel(#10) ///
ytitle("Weighted Average Wages (2017 $)", size(medsmall)) ///
title("Weighted Average Wages Over the Life Course", size(medsmall))

* Plot race
graph bar [aw=weight], over(race_hd, ///
relabel(1 "White" 2 "Black" 3 "Indigenous/Latino" 4 "AAPI" 5 "Other")) ///
ylabel(#10) title("Weighted Distribution of Race Aggregated Over 1968-2021", ///
size(medium))

* Export plot
graph export output/race_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot Hispanicity
graph bar [aw=weight], over(hisp_hd, relabel(1 "Not Hispanic" 2 "Hispanic")) ///
title("Weighted Distribution of Hispanicity Aggregated Over 1968-2021", ///
size(medium))

* Export plot
graph export output/hisp_test_rob2.jpg, replace quality(100) width(1500) height(1000)


* Disaggregating by adult child sex **********************************

* Plot ranks over time for Father-son pairs
*twoway line avg_rank_sex year if sex == 1, sort || ///
*line avg_rank_dad_sex year if sex == 1, sort ///
*legend(label(1 "Adult Son") label(2 "Father")) ///
*xlabel(#10) xtitle("Year") ylabel(#10) ///
*ytitle("Weighted Mean Percentile Rank", size(medsmall)) ///
*title("Weighted Mean Percentile Ranks Over Time for Father-Son Pairs", ///
*size(medium))

* Plot individual ranks over time for father-son pairs
twoway line avg_rank_indiv_sex year if sex == 1, sort || ///
line avg_rank_dad_sex year if sex == 1, sort ///
legend(label(1 "Adult Son") label(2 "Father")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Percentile Rank", size(medsmall)) ///
title("Weighted Mean Percentile Ranks Over Time for Father-Son Pairs", ///
size(medium))

* Export plot
graph export output/ranks_sons_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot ranks over time for Father-daughter pairs
*twoway line avg_rank_sex year if sex == 2, sort || ///
*line avg_rank_dad_sex year if sex == 2, sort ///
*legend(label(1 "Adult Daughter") label(2 "Father")) ///
*xlabel(#10) xtitle("Year") ylabel(#10) ///
*ytitle("Weighted Mean Percentile Rank", size(medsmall)) ///
*title("Weighted Mean Percentile Ranks Over Time for Father-Daughter Pairs", ///
*size(medium))

* Plot individual ranks over time for Father-daughter pairs
twoway line avg_rank_indiv_sex year if sex == 2, sort || ///
line avg_rank_dad_sex year if sex == 2, sort ///
legend(label(1 "Adult Daughter") label(2 "Father")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Mean Percentile Rank", size(medsmall)) ///
title("Weighted Mean Percentile Ranks Over Time for Father-Daughter Pairs", ///
size(medium))
* There appears to be an increasing trend. How come?

* Export plot
graph export output/ranks_daughters_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot absolute mobility over time pairs by sex
twoway line avg_abs_mob_sex year if sex == 1, sort || ///
line avg_abs_mob_sex year if sex == 2, sort ///
legend(label(1 "Father-Son Pairs") label(2 "Father-Daughter Pairs")) ///
xlabel(#10) xtitle("Year") ///
ylabel(#10) ///
ytitle("Weighted Mean Absolute Mobility Rate (%)") ///
title("Weighted Mean Absolute Mobility Rate Over Time", ///
size(medium))

* Plot individual absolute mobility rate over time pairs by sex
twoway line avg_abs_mob_indiv_sex year if sex == 1, sort || ///
line avg_abs_mob_indiv_sex year if sex == 2, sort ///
legend(label(1 "Father-Son Pairs") label(2 "Father-Daughter Pairs")) ///
xlabel(#10) xtitle("Year") ///
ylabel(#10) ///
ytitle("Weighted Mean Absolute Mobility Rate (%)") ///
title("Weighted Mean Absolute Mobility Rate Over Time", ///
size(medium))

* Export plot
graph export output/abs_mob_by_sex_test_rob2.jpg, replace quality(100) width(1500) height(1000)

// Anomaly is due to small number of observations.

* Plot AFDC/TANF participation rate over time by sex
twoway line avg_cur_particip_sex year if sex == 1, sort || ///
line avg_cur_particip_sex year if sex == 2, sort  ///
legend(label(1 "Sons") label(2 "Daughters")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted AFDC/TANF Participation Rate (%)", size(medsmall)) ///
title("Weighted AFDC/TANF Participation Rate Over Time by Sex", ///
size(medsmall))

* Export plot
graph export output/particip_by_sex_test_rob2.jpg, replace quality(100) width(1500) height(1100)

* Plot average wage over life course
twoway line avg_wag_sex age if sex == 1, sort || ///
line avg_wag_sex age if sex == 2, sort ///
xlabel(#10) xtitle("Age") ylabel(#10) ///
ytitle("Weighted Average Wages (2017 $)", size(medsmall)) ///
title("Weighted Average Wages Over the Life Course", size(medsmall))


* Plot marriage rate over time by sex
twoway line avg_mar_sex year if sex == 1, sort || ///
line avg_mar_sex year if sex == 2, sort  ///
legend(label(1 "Sons") label(2 "Daughters")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Marriage Rate (%)", size(medsmall)) ///
title("Weighted Marriage Rate Over Time by Sex", ///
size(medsmall))

* Export plot
graph export output/mar_by_sex_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot labor force participation rate by sex over time
twoway line pct_lfp_sex year if sex == 1, sort || ///
line pct_lfp_sex year if sex == 2, sort  ///
legend(label(1 "Sons") label(2 "Daughters")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Labor Force Participation Rate (%)", size(medsmall)) ///
title("Weighted Labor Force Participation Rate Over Time by Sex", ///
size(medsmall))

* Export plot
graph export output/lfp_by_sex_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot wage observation rate by sex over time
twoway line pct_wage_obs_sex year if sex == 1, sort || ///
line pct_wage_obs_sex year if sex == 2, sort  ///
legend(label(1 "Sons") label(2 "Daughters")) ///
xlabel(#10) xtitle("Year") ylabel(#10) ///
ytitle("Weighted Positive Wage Observation Rate (%)", size(medsmall)) ///
title("Weighted Positive Wage Observation Rate Over Time by Sex", ///
size(medsmall))

* Export plot
graph export output/wage_obs_by_sex_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot race by sex
catplot sex race_hd [aw=weight], ///
percent(sex) ///
var1opts(relabel(1 "Sons" 2 "Daughters")) ///
var2opts(relabel(1 "White" 2 "Black" 3 "Indigenous/Latino" 4 "AAPI" 5 "Other")) ///
title("Weighted Distribution of Race by Sex Aggregated Over 1968-2021", ///
size(medsmall)) blabel(bar, format(%4.1f)) asyvars

* Export plot
graph export output/race_by_sex_test_rob2.jpg, replace quality(100) width(1500) height(1000)

* Plot Hispanicity by sex
catplot sex hisp_hd [aw=weight], ///
percent(sex) ///
var1opts(relabel(1 "Sons" 2 "Daughters")) ///
var2opts(relabel(1 "Not Hispanic" 2 "Hispanic")) ///
title("Weighted Distribution of Hispanicity by Sex Aggregated Over 1968-2021", ///
size(medsmall)) blabel(bar, format(%4.1f)) asyvars

* Export plot
graph export output/hisp_by_sex_test_rob2.jpg, replace quality(100) width(1500) height(1000)
