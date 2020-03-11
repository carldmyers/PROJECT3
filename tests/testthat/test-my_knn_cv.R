#within test-my_knn_cv.R
test_that("my_knn_cv outputs a list", {
  expect_is(my_knn_cv(train = iris[, -5], cl = iris$Species, 1, 5), "list")
})
test_that("non-list input throws error", {
  expect_error(my_knn_cv("a string"))
})
