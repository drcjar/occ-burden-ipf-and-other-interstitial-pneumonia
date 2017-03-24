log using "/home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/metaanalysis16_03_17.smcl", replace
import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/any_dust.csv, clear
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year)
metabias6 lnor lncilow lnciup, egger
metabias6 or cilow ciup, graph(begg)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/metal_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year)
metabias6 lnor lncilow lnciup, egger
metabias6 or cilow ciup, graph(begg)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/wood_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year)
metabias6 lnor lncilow lnciup, egger
metabias6 or cilow ciup, graph(begg)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/agricultural_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year) 
metabias6 lnor lncilow lnciup, egger
metabias6 or cilow ciup, graph(begg)
log close

