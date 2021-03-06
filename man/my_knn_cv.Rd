% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_knn_cv.R
\name{my_knn_cv}
\alias{my_knn_cv}
\title{K-nearest Neighbors Cross Validation Function}
\usage{
my_knn_cv(train, cl, k_nn, k_cv)
}
\arguments{
\item{train}{A data frame to input.}

\item{cl}{It is a true value of my training data.}

\item{k_nn}{An integer that represents the number of neighbors.}

\item{k_cv}{An integer that represents the number of folds.}
}
\value{
The function will output a list of objects.
}
\description{
This function predicts output using covaritates.
}
\examples{
my_knn_cv(train = iris[, -5], cl = iris$Species, 1, 5)
my_knn_cv(train = iris[, -5], cl = iris$Species, 5, 5)

}
\keyword{Cross}
\keyword{K-nearest}
\keyword{Validations}
