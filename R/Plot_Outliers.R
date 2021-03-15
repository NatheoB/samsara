#' @title Plot graphics for detecting outliers
#'
#' @description Plot a boxplot and cleveland plot for all given quantitative variables of the given dataset.
#' It aims to detect outliers within a given distribution.
#'
#' @import ggplot2
#' @import cowplot
#'
#' @param df dataframe in which data to plot are stored
#' @param quantiVars strings vector of quantitative variables to plot
#'
#' @return ggplot2 graphics with boxplot and cleveland plot in a grid for each variable.
#'
#' @examples
#'Plot_Outliers(data, varNames)

Plot_Outliers <- function(df, quantiVars) {
  # Save number of row for cleveland plot
  df$row <- 1:(dim(df)[1])

  # Plot for each variable
  for (var in quantiVars) {
    # Boxplot
    boxPlot <- ggplot(df, aes_string(y = var)) +
      geom_boxplot() +
      scale_x_continuous(breaks = NULL)

    # Cleveland plot
    clevelandPlot <- ggplot(df, aes_string(x = var, y = "row")) +
      geom_point() +
      ylab("") + scale_y_continuous(breaks = NULL)

    # Plot the grid graph
    print(plot_grid(boxPlot, clevelandPlot, labels = c("AUTO"), align = 'h'))
  }
}
