test_that("Filter can filter basic data", {
  x <- c(1, 1, 2, 3, 5)
  x_filt <- MedianFilter(x)
  expect_equal(x_filt, c(1, 1, 2, 3, 3))

  x <- c(2, 3, 80, 6, 2, 3)
  x_filt <- MedianFilter(x)
  expect_equal(x_filt, c(2, 3, 6, 6, 3, 2))
})

test_that("Filtering works for uniform data", {
  x <- rep(5, 10)
  expect_equal(MedianFilter(x), x)
  expect_equal(MedianFilter(x, window = 5), x)
})

test_that("Filtering with window 1 gives the input signal", {
  x <- seq(5)
  expect_equal(MedianFilter(x, window = 1), x)

  x <- seq(9)
  expect_equal(MedianFilter(x, window = 1), x)
})

test_that("Median filter removes outlier correctly", {
  x <- c(1, 2, 100, 2, 1)
  expected_output <- c(1, 2, 2, 2, 1)
  expect_equal(MedianFilter(x), expected_output)
})

