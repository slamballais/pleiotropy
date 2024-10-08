# verify that it works like sort( )
set.seed(2000)
x <- rnorm(1000)
x2_short <- c(1, rep(0.05, 3), 0.01)
x2_long <- c(1, rep(0.05, 15), 0.01)

test_that("fastorder runs as expected", {
  expect_equal(fastorder(x2_long)$ix, 17:1)
})

test_that("fastorder is identical to sort", {
  expect_equal(sort(x, index.return = TRUE), fastorder(x))
  expect_equal(sort(x2_short, index.return = TRUE), fastorder(x2_short))
})

test_that("fastorder can handle some errors", {
  expect_error(fastorder("test"))
})
