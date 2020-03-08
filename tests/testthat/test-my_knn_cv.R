#within test-my_knn_cv.R
t1 <- my_knn_cv(train = iris[, -5], cl = iris$Species, 1, 5)
test_that("cv_error function works", {
  expect_equal(t1$cv_error, .96)
})
