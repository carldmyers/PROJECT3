#' Random Forest Cross Validation Function
#'
#' This function will predict output using given covariates.
#' @param k An integer that represents the number of folds.
#' @keywords Random Forest
#'
#' @return A list of objects numerically with cross validation errors.
#'
#' @examples
#' my_rf_cv(5)
#'
#' @import class randomForest magrittr
#'
#' @export
my_rf_cv <- function(k) {
  set.seed(302)
  fold <- sample(rep(1:k, length = length(my_gapminder$lifeExp)))
  # data <- data.frame()
  mse <- rep(NA, k)
  # loop thru the folds
  for (i in 1:k) {
    data_train <- my_gapminder[fold != i, ] # Xi
    data_test <-  my_gapminder[fold == i, ]  # Xi star
    # Train our models
    cl_train <- my_gapminder$lifeExp[fold != i] # Yi
    cl_test <- my_gapminder$lifeExp[fold == i]  # Yi star
    model <- randomForest(lifeExp ~ gdpPercap, data = data_train, ntree = 100)
    predictions <- predict(model, data_test[, -1])
    mse[i] <- mean((predictions - cl_test)^2)
  }
  output <- mean(mse)
}
