# BIOL0044 MSci Investigaive Project for the Biological Sciences: Modelling Protometabolism
_Code and reading materials related to my **BIOL0044 MSci Investigative Project** at the Lane Origins lab._  

## Project aims and outline

One of the aims of this investigative project is to implement a simple stochastic kinetic model of a plausible network of prebiotic metabolism. 
This is done using the `GillespieSSA` package in *R*, and this repo contains the majority of the resources used.  

## Structure 

Files: 

- `bigger_network.Rmd` = cleans Stuart's data file to yield lists of reactants, products, chemical reaction names, a state-change matrix and propensity functions _etc_ based on `bigger_pathway_rxns.xlsx`(NB incomplete, check _Notes_ section for more info)
- `big_st_ch_matrix.csv` = first draft of the state-change matrix for the bigger simulation  
- `big_pathway_sim_prep.RData` = the data files needed to simulate the bigger network of reactions
- `bigger_pathway_rxns.xlsx` = slightly modified file used to read pathways and reaction data in preparation for the simulation (see `bigger_network.Rmd`)
- `bigger_pathway_rxns_original.xlsx` = Stuart's manually curated protometabolic pathways of chemical reactions 



Folders: 

- `dependencies/` = contains snippets of R scripts used to automate tasks _e.g._ plotting in main .RMD files
- `other_RMDs` = files with old notes and analyses _etc_
    - `reversible_network_cleanup.RMD` = file with notes exploring summer student's code and data; used to produce the .RDATA file above
    - `intro_notes_gillespie.R` = rudimentary notes on `GillespieSSA` package use and synthax
    - `reversible_network.RMD` = contains the latest progress with introducing reversible reactions into the model
    - `lia_matrices.RData` = associated .RDATA file containing data produced/used by summer student, which forms the basis of the model
    - `reversible_c_fix.csv` = state-change matrix for reversible carbon fixation reactions
    - `reversible_network_progress.html` and `reversible_network_progress.pdf` = brief report of latest progress
- `reading/` = notes made and papers downloaded for reference
- `Lia_summer_proj/` = local clone of summer student's repo
