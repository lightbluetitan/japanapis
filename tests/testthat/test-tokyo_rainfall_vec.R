# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# tokyo_rainfall_vec

library(testthat)

# Test 1: Confirm the object exists and is a numeric vector
test_that("tokyo_rainfall_vec is a numeric vector", {
  expect_true(exists("tokyo_rainfall_vec"))
  expect_type(tokyo_rainfall_vec, "double")
  expect_null(dim(tokyo_rainfall_vec))  # confirms it's a vector, not a matrix or array
})

# Test 2: Confirm it has exactly 366 elements
test_that("tokyo_rainfall_vec has 366 elements", {
  expect_equal(length(tokyo_rainfall_vec), 366)
})
