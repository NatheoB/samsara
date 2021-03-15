#' @title Plot the distributions
#'
#' @description Plot the distribution histograms for all given quantitative variables of the given dataset.
#'
#' @import ggplot2
#'
#' @param df dataframe in which data to plot are stored
#' @param quantiVars strings vector of quantitative variables to plot
#'
#' @return ggplot2 histogram for each variable
#'
#' @examples
#' Plot_Distributions(data, varNames)

Plot_Distributions <- function(df, quantiVars) {
  # Plot for each variable
  for (var in quantiVars) {
    # Histogram
    hist <- ggplot(df, aes_string(x = var)) +
      geom_histogram(color="black", fill="gray")

    print(hist)
  }
}
