#within test-my_rf_cv.R
test_that("cv_error function works", {
  expect_equal(my_rf_cv(5), 76.6866 - 4.35e-06)
})

