library("ggplot2")
library("stringr")

# plt_fnc uses the output of simulation to plot only variables of interest
### to _plot = specify which varaibles to plot 
###### NB match spelling to simulation input
### data = output of ssa() sinulation 
### n_plots = prints a statement of the number of plots
### col = specifies the color of the plot points

plt_fnc = function(to_plot, data, n_plots = F, col = "black") {
    # initialise output list and index
    species = colnames(data) # column names matching to vars sim-d
    index = match(to_plot, species) # index matching to_plot to data columns
    plots_out = vector("list", length(index)) # init output list
    names(plots_out) = species[index] # name output list
    
    # populate output lsit
    for (i in seq_along(index)) {
        plots_out[[i]] <- ggplot(data = as.data.frame(data), 
                                 mapping = aes(x = t, y = .data[[ species[index[i]] ]]  )) +
            geom_point(size = 0.5, color = col) +
            theme_classic() +
            xlab("Time") + ylab("Molecules") +
            ggtitle(str_c(str_split(to_plot[i], "_")[[1]], collapse = " ")) +
            theme(axis.text.x = element_blank(), 
                  axis.ticks.x = element_blank(),
                  axis.title.x = element_text(size = 8),
                  axis.title.y = element_text(size = 8),
                  plot.title = element_text(size = 9, face = "italic"))
    }
    
    if (n_plots == T) cat("Output contains", length(to_plot), "plots.")
    return(plots_out)
}


# use code below to print
# for (i in seq_along(to_plot)) cat("p1[[",i,"]]"," + ", sep = "")


###### Another plotting function which uses baseR plotting 
### Problem: plot() produces plots which cant readily be saved as objects in the enviornment.
## Solution 1: recordPlot() function - not sure how to uyse it; 
## Solution 2: make ggplots :)))))) 

# plt_fnc_baseR = function(to_plot, data) {
#     # initialise output list and index
#     species = colnames(data) # column names matching to vars sim-d
#     index = match(to_plot, species) # index matching to_plot to data columns
#     plots_out = vector("list", length(index)) # init output list
#     names(plots_out) = species[index] # name output list
#     
#     # make plots_out and populate output lsit
#     for (i in seq_along(index)) {
#         plots_out[[i]] <- plot(
#             data[, 1], # time is stored as the first column
#             data[, index[i]],
#             main = str_to_title(str_c(str_split(to_plot[i], "_")[[1]], collapse = " ")),
#             pch = 20,
#             cex = 0.3,
#             xlab = "Time",
#             ylab = "Concentration"
#         )
#     }
#     cat("Output contains", length(to_plot), "plots.")
#     return(plots_out)
# }
