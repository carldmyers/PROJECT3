my_vec1 <- c(4, 5, 6, 2, 3)
t.test1 <- my_t.test(my_vec1, "less", 5)
test_that("my_t_test outputs a list", {
  expect_is(my_t_test(c(1, 2, 3, 4, 5), mu = 3, alternative = "greater"), "list")
})
test_that("non-list input throws error", {
  expect_error(my_t_test("numeric"))
})
