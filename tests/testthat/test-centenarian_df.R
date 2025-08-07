# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# centenarian_df

library(testthat)

# Test 1: Confirm the object is a data.frame (not a tibble)
test_that("centenarian_df is a data.frame", {
  expect_s3_class(centenarian_df, "data.frame")
  expect_false("tbl_df" %in% class(centenarian_df))
})

# Test 2: Confirm the number of columns is 19
test_that("centenarian_df has 19 columns", {
  expect_equal(length(centenarian_df), 19)
})

# Test 3: Confirm the number of rows is 21
test_that("centenarian_df has 21 rows", {
  expect_equal(nrow(centenarian_df), 21)
})

# Test 4: Confirm the column names are correct and in order
test_that("centenarian_df has correct column names", {
  expect_named(centenarian_df, c(
    "X", "X1963", "X1964", "X1965", "X1966", "X1967",
    "X1968", "X1969", "X1970", "X1971", "X1972", "X1973",
    "X1974", "X1975", "X1976", "X1977", "X1978", "X1979", "X1980"
  ))
})

# Test 5: Confirm the column types are correct
test_that("centenarian_df columns have correct types", {
  expect_type(centenarian_df$X, "double")
  expect_type(centenarian_df$X1963, "integer")
  expect_type(centenarian_df$X1964, "integer")
  expect_type(centenarian_df$X1965, "integer")
  expect_type(centenarian_df$X1966, "integer")
  expect_type(centenarian_df$X1967, "integer")
  expect_type(centenarian_df$X1968, "integer")
  expect_type(centenarian_df$X1969, "integer")
  expect_type(centenarian_df$X1970, "integer")
  expect_type(centenarian_df$X1971, "integer")
  expect_type(centenarian_df$X1972, "integer")
  expect_type(centenarian_df$X1973, "integer")
  expect_type(centenarian_df$X1974, "integer")
  expect_type(centenarian_df$X1975, "integer")
  expect_type(centenarian_df$X1976, "integer")
  expect_type(centenarian_df$X1977, "integer")
  expect_type(centenarian_df$X1978, "integer")
  expect_type(centenarian_df$X1979, "integer")
  expect_type(centenarian_df$X1980, "integer")
})
