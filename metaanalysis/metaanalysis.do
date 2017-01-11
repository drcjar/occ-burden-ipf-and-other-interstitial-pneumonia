log using "/home/drcjar/Documents/TaskForce/metaanalysis/metaanalysis25_10_16.smcl", replace
import delimited /home/drcjar/Documents/TaskForce/metaanalysis/any_dust.csv, clear
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random

import delimited /home/drcjar/Documents/TaskForce/metaanalysis/metal_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random

import delimited /home/drcjar/Documents/TaskForce/metaanalysis/wood_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random

import delimited /home/drcjar/Documents/TaskForce/metaanalysis/agricultural_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random
log close
