#' Linear Model Function
#'
#' This function fits a linear model to R.
#' @param formula A formula class object, similar to lm().
#' @param data An input data frame.
#' @keywords Linear Model
#'
#' @return A fitted linear model.
#'
#' @examples
#' data(gapminder)
#' gapminderLm <- lm(lifeExp ~ pop + gdpPercap, data = gapminder)
#' summary(gapminderLm)
#' my_lm(realLm, data = gapminder)
#'
#' @export
my_lm <- function(formula, data) {
  #extract model matrix
  X <- model.matrix(formula, data)
  #extract model response
  my_frame <- model.frame(formula, data)
  #extract model frame
  Y <- model.response(my_frame)
  #solve linear regression coefficints
  beta <- solve(t(X) %*% X) %*% t(X) %*% Y
  #define degrees of freedom
  df <- nrow(X) - ncol(X)
  #define sample variance
  sigma_sq <- sum((Y - X %*% beta)^2 / df)
  #contents of standard error
  se <- ((sigma_sq) * solve((t(X) %*% X))) %>% diag()
  #estimate standard error for the coefficients
  stats <- sqrt(se)
  #define test statistic
  test_stat <- ((beta - 0) / stats)
  #define
  area_under <- 2 * pt(-abs(test_stat), df)
  #result formatting
  result <- cbind(beta, stats, test_stat, area_under)
  #change column names
  colnames(result) <- c("Estimate", "Std. Error", "t value", "Pr(>|t|)")
  result <- as.table(result)
  #print results
  return(result)
}
