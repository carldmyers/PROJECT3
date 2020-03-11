#within test-my_lm.R
skinner <- my_lm(realLm, data = mtcars)
test_that("my_lm outputs a table", {
  expect_is(my_lm(pop ~ gdpPercap, my_data = my_gapminder), "table")
})
test_that("non-table input throws error", {
  expect_error(my_lm("a string"))
})
