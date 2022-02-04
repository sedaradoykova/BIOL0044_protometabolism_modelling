# BIOL0044 MSci Investigaive Project for the Biological Sciences: Modelling Protometabolism
_Code and reading materials related to my **BIOL0044 MSci Investigative Project** at the Lane Origins lab._  


## Project aims and outline

One of the aims of this investigative project is to implement a simple stochastic kinetic model of a plausible network of prebiotic metabolism. 
This is done using the `GillespieSSA` package in *R*, and this repo contains the majority of the resources used.  


## Repo structure and contents


Directories and some important contents: 

- `dependencies/` = contains snippets of abstracted and generalsied R scripts used to automate tasks _e.g._ plotting or state change matrix generation from `.xlsx` input 
- `bigger_pathway_materials` = developing R code for a pipeline which starts with Stuart's curated materials (`.xlsx`), converting those to reactant and product names, generating a state-change matrix and propensity functions, _etc_.
    - `bigger_network.Rmd` = cleans Stuart's data file to yield lists of reactants, products, chemical reaction names, a state-change matrix and propensity functions _etc_ based on `bigger_pathway_rxns.xlsx`(NB incomplete, check _Notes_ section for more info)
    - `big_st_ch_matrix.csv` = first draft of the state-change matrix for the bigger simulation  
    - `big_pathway_sim_prep.RData` = the data files needed to simulate the bigger network of reactions
- `rev_c_fix` = contains all files in relation to 
    - `archive` = files with old notes, analyses, reports, _etc_
    - `data` = contains all `.RData` and `.csv` files used for analyses
    - `images` = contains all plots and visualisations created by `.Rmd` files in this directory
    - `initial_prep` = contains all EDA and initial readings 
    - `reversible_network[...].RMD` = the latest progress with introducing reversible reactions into the model; shows stages (working, debugging, _etc_)
    - `network_visualisation.Rmd` = rough draft of code visualising reversible C fixation network; nodes and edges are scaled; needs further abstraction at this stage
    - `c_pathway_diagrams.pptx` = simple diagrams of reversible C fixation


Individual files: 

- `bigger_pathway_rxns.xlsx` = slightly modified file used to read pathways and reaction data in preparation for the simulation (see `bigger_network.Rmd`)
- `bigger_pathway_rxns_original.xlsx` = Stuart's manually curated protometabolic pathways of chemical reactions 
- `all_pathway_reactions_original.xlsx` = larger network curated by Stuart; includes Wood-Ljungdhal; Krebs cycle; amino acid synthesis pathways... 
- `data_for_Stuart.zip` = outputs from carbon fixation simulations (forward, reversible with negligble rate, reversible with equal rate)
