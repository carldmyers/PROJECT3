#within test-my_lm.R
test_that("my_lm outputs a table", {
  expect_is(my_lm(realLm, data = mtcars), "table")
})
test_that("non-table input throws error", {
  expect_error(my_lm("a string"))
})
