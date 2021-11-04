# BIOL0044_protometabolism_modelling
_Code and reading materials related to my **BIOL0044 MSci Investigative Project** at the Lane Origins lab._  

## Project aims and outline

One of the aims of this investigative project is to implement a simple stochastic kinetic model of a plausible network of prebiotic metabolism. 
This is done using the `GillespieSSA` package in *R*, and this repo contains the majority of the resources used.  

## Structure 

Files: 

- `reversible_network.RMD` = contains the latest progress with introducing reversible reactions into the model
  - `lia_matrices.RDATA` = associated .RDATA file containing data produced/used by summer student, which forms the basis of the model
- `reversible_network_cleanup.RMD` = file with notes exploring summer student's code and data; used to produce the .RDATA file above
- `intro_notes_gillespie.R` = rudimentary notes on `GillespieSSA` package use and synthax

Folders: 
- `dependencies/` = contains snippets of R scripts used to automate tasks _e.g._ plotting in main .RMD files
- `reading/` = notes made and papers downloaded for reference
- `Lia_summer_proj/` = local clone of summer student's repo
