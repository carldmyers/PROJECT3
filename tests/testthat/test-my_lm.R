#within test-my_lm.R
data("my_gapminder")
gapminderLm <- lm(pop ~ gdpPercap, data = my_gapminder)
test_that("my_lm outputs a table", {
  expect_is(my_lm(gapminderLm, data = my_gapminder), "table")
})
test_that("non-table input throws error", {
  expect_error(my_lm(1, "a string"))
})
