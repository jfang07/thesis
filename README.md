# Effects of Welfare Reform on Intergenerational Mobility for Non-High School Educated, Female-Headed Households
* Author: Jade Fang
* Advisor: YingHua He, Ph.D.
* Institution: Rice University
* Description: This repository houses the necessary code to replicate results shown in my senior thesis.

## Table of contents
### `code` folder
This folder houses the project's R scripts and Stata do-files. To replicate the results, please execute the scripts in the following order:
* `family_cleaning.R`: this script performs the preliminary data cleaning procedures to prepare the raw family-level data set for merging and further cleaning.
* `indiv_cleaning.R`: this script performs the preliminary data cleaning procedures to prepare the raw individual-level data set for merging and further cleaning.
* `state_controls.do`: this script cleans and merges various state-level data sets.
* `init_merging.R`: this script merges the family- and individual-level data sets to identify household heads. It also merges in state-level controls.
* `exposure.R`: this script matches individuals with their mothers when the individual was under the age of 18. It also creates a variable for exposure to welfare reform in this period.
* `main_merging.R`: this script matches individuals with their mothers when the individual reaches adulthood. It also merges in childhood-period data, individual wage data, and state-level controls.
* `wage_distribution.do`: this script constructs national wage distributions by birth cohort at the age of 40.
* `ranking.R`: this script ranks the lifetime earnings each individual and their mother on their corresponding birth cohort's wage distribution at 40 years old. It also creates a separate data set for the placebo group. 
* `data_cleaning.do`: this script performs remaining data cleaning needed after constructing the main data set. It also cleans the separate data set for the placebo group. 
* `data_visualization.do`: this script generates various charts to show key distributions and trends over time.
* `data_visualization for robustness.do`: this script generates various charts to show key distributions and trends over time, specifically for the placebo group.
* `data_analysis.do`: this script generates summary statistics and runs regressions of various specifications.
* `robustness_checks.do`: this script runs regressions on data based on an alternative rank specification and data on the placebo group.
### `data` folder
This folder should house the project's data and codebook files. Currently, the data and codebook files are stored in a separate DropBox folder and are available upon request.
### `Hartley et al. (2022)` folder
This folder houses the replication package for the journal article "Welfare Reform and the Intergenerational Transmission of Dependence" (2022) by Robert Paul Hartley,  Carlos Lamarche, and James P. Ziliak.




