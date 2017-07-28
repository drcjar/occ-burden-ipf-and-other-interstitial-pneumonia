log using "/home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/metaanalysis28_07_17.smcl", replace
import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/any_dust.csv, clear
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year)
metabias6 or cilow ciup, graph(egger)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/metal_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year)
metabias6 or cilow ciup, graph(egger)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/wood_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year)
metabias6 or cilow ciup, graph(egger)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/agricultural_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year) 
metabias6 or cilow ciup, graph(egger)

import delimited /home/drcjar/Documents/occ-burden-ipf-and-other-interstitial-pneumonia/metaanalysis/silica_dust.csv, clear 
gen lnor=ln(or)
gen lncilow=ln(cilow)
gen lnciup=ln(ciup)
metan lnor lncilow lnciup, eform random label(namevar=author, yearvar=year) 
metabias6 or cilow ciup, graph(egger)
log close

