* This script loads raw family- and individual-level data from the University of Michigan's Panel Study of Income Dynamics
* Author: Jade Fang
* Last Modified: 1/20/2025

* Go to the PISD data subdirectory
cd data/psid

* Load family data
do J342277.do
do J342277_formats.do
save "family_raw.dta", replace

* Load individual data
clear all
do J342279.do
do J342279_formats.do
save "individual_raw.dta", replace

* Load family unit size data
clear all
do J342281.do
do J342281_formats.do
save "number_raw.dta", replace

* Load family mapping, marriage, and employment data
clear all
do J342282.do
do J342282_formats.do
save "pid_mar_emp_raw.dta", replace

* Load individual wages data
clear all
do J342283.do
do J342283_formats.do
save "indiv_wages_raw.dta", replace

* Return to the main directory
cd ../..
