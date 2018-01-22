log using "/home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/metaproppaf21_09_17.smcl", replace
import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/pappaf.csv, clear
gen numround = round(num)

metaprop numround denom, random ftt cimethod(exact) label(namevar=author, yearvar=year) sortby(_ES) xlab(.25,.5,.75,1) xtitle(Proportion)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/papsilicapaf.csv, clear
gen numround = round(num)

metaprop numround denom, random ftt cimethod(exact) label(namevar=author, yearvar=year) sortby(_ES) xlab(.25,.5,.75,1) xtitle(Proportion)

log close
