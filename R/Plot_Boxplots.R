#' @title Plot boxplots
#'
#' @description Plot the boxplots for all given quantitative variables, according given factors, of the given dataset.
#'
#' @import ggplot2
#'
#' @param df dataframe in which data to plot are stored
#' @param quantiVars strings vector of quantitative variables to plot
#' @param factorCol string name of the factor variable to distinct with colors
#' @param factorGrid string name of the factor variable to distinct within a plot grid
#'
#' @return ggplot2 grid of boxplots for each variable.
#'
#' @examples
#'Plot_Boxplots(data, varNames, factors[1])
#'Plot_Boxplots(data, Yquanti, NULL, factors[2])
#'Plot_Boxplots(data, Yquanti, factors[1], factors[2])

Plot_Boxplots <- function(df, quantiVars, factorCol = NULL, factorGrid = NULL) {
  # For each quantitative variable
  for (var in quantiVars) {
    boxplot <- ggplot(df, aes_string(x = factorCol, y = var, color = factorCol)) +
      geom_boxplot() +
      xlab(factorCol) + ylab(var) +
      scale_x_discrete(breaks = NULL) +
      facet_wrap(factorGrid, ncol = 3)

    print(boxplot)
  }
}
