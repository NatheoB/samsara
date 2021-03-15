#' @title Plot for analysing normality
#'
#' @description Plot a QQ-plot and perform a Shapiro test for given variables in a given dataset.
#'
#' @import ggplot2
#'
#' @export
#'
#' @param df dataframe in which data to plot are stored
#' @param quantiVars strings vector of quantitative variables to plot
#'
#' @return ggplot2 graphics with QQ-plot and shapiro test p-value.
#'
#' @examples
#'Plot_Normalities(data, varNames)

Plot_Normalities <- function(df, quantiVars) {
  # Plot for each variable
  for (var in quantiVars) {
    # Q-Q plot
    qqplot <- ggplot(df, aes_string(sample = var)) +
      stat_qq() +
      stat_qq_line() +
      labs(title = paste( "QQ plot of", var),
           subtitle = paste("Shapiro test p-value =",shapiro.test(df[,var])$p.value)) +
      theme(plot.title = element_text(hjust = 0.5),
            plot.subtitle = element_text(hjust = 0.5))

    print(qqplot)
  }
}
