library("stringr")

# react_proc_names() takes a vector of reactants or products, as given in Stuart's Excel sheets
# and returns a corresponding list of names; 
# the output list length presumably matches the number of chemical reactions of interest
### react_col = a vector of reactants or products e.g. c("CO2 + H2", "enol-pyruvate + H2O")
### rxn_col = optionally, one can assign reaction type names to output
###           using this vector of length matching to react_col 

###### NB this function doesn't cope well with: 
# spelling mistakes, spaces left after the last word of an excel entry, coefficients.
# Therefore, the input must be clean!

react_prod_names = function(react_col, rxn_col = NULL) {
    react = react_col
    react = str_split(react, " \\+ ")
    for (i in seq_along(react)) {
        react[[i]] = str_replace_all(react[[i]], " ", "_")
        for (j in seq_along(react[[i]])) {
            if (nchar(react[[i]][j]) <= 3)
                react[[i]][j] = toupper(react[[i]][j])
            else
                react[[i]][j] = tolower(react[[i]][j])
        }
    }
    if (is.null(rxn_col) == F) names(react) = str_replace_all(rxn_col, " ", "_")
    return(react)
}