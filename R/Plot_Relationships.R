#' @title Plot relationships between variables
#'
#' @description Plot the relationships between given X (explanatory) and Y (response) variables.
#' According to given factors of a given dataset.
#'
#' @import ggplot2
#'
#' @export
#'
#' @param df dataframe in which data to plot are stored
#' @param XquantiVars strings vector of quantitative explanatory variables to plot
#' @param YquantiVars strings vector of quantitative response variables to plot
#' @param factorCol string name of the factor variable to distinct with colors
#' @param factorGrid string name of the factor variable to distinct within a plot grid
#'
#' @return ggplot2 grid of boxplots for each variable.
#'
#' @examples
#'Plot_Relationships(data, XvarNames, XvarNames)
#'Plot_Relationships(data, XvarNames, XvarNames, NULL, Xfactors[2])
#'Plot_Relationships(data, XvarNames, YvarNames)
#'Plot_Relationships(data, XvarNames, YvarNames, Xfactors[1], Xfactors[2])

Plot_Relationships <- function(df, XquantiVars, YquantiVars, factorCol = NULL, factorGrid = NULL) {
  # For each Y variable
  for (Yvar in Yvars) {
    # For each X variable
    for (Xvar in Xvars) {
      if (Xvar == Yvar) {next}

      plot <- ggplot(df, aes_string(x = Xvar, y = Yvar, color = factorCol)) +
        geom_point() +
        xlab(Xvar) + ylab(Yvar) +
        facet_wrap(factorGrid, ncol = 3)

      print(plot)
    }
  }
}
