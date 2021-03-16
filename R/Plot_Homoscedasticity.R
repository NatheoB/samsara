#' @title Plot for analysing homoscedasticity
#'
#' @description Plot a scatter plot fitted values VS residuals of a linear model
#'
#' @import ggplot2
#'
#' @export
#'
#' @param model linear model to check homoscedasticity assumption
#'
#' @return ggplot2 fitted VS residuals scatterplot
#'
#' @examples
#' model <- lm(y~x)
#' Plot_Homoscedasticity(model)


Plot_Homoscedasticity <- function(model) {
  data <- data.frame(
    residuals = model$residuals,
    fitted = predict(model),
    zero = 0
  )
  ggplot(data, aes(fitted, residuals) +
           geom_point(colour= "gray") +
           geom_hline(yintercept = 20, linetype="dashed", color = "gray")
  )

}
