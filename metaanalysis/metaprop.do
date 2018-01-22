log using "/home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/metaprop25_09_17.smcl", replace
import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/any_paf.csv, clear
gen numround = round(num)
metaprop numround denom, random cimethod(exact) label(namevar=author, yearvar=year) sortby(_ES) xlab(.25,.5,.75,1) xtitle(Proportion)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/metal_paf.csv, clear
gen numround = round(num)
metaprop numround denom, random ftt cimethod(exact)label(namevar=author, yearvar=year) sortby(_ES) xlab(.25,.5,.75,1) xtitle(Proportion)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/wood_paf.csv, clear
gen numround = round(num)
metaprop numround denom, random ftt cimethod(exact) label(namevar=author, yearvar=year) sortby(_ES) xlab(.25,.5,.75,1) xtitle(Proportion)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/agri_paf.csv, clear
gen numround = round(num)
metaprop numround denom, random ftt cimethod(exact) label(namevar=author, yearvar=year) sortby(_ES) xlab(.25,.5,.75,1) xtitle(Proportion)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/silica_paf.csv, clear
gen numround = round(num)
metaprop numround denom, random cimethod(exact) label(namevar=author, yearvar=year) sortby(_ES) xlab(.25,.5,.75,1) xtitle(Proportion)


log close
