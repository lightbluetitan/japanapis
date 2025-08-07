# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# toyota_stock_prices_df

library(testthat)

# Test 1: Confirm the object is a data.frame (not a tibble)
test_that("toyota_stock_prices_df is a data.frame", {
  expect_s3_class(toyota_stock_prices_df, "data.frame")
  expect_false("tbl_df" %in% class(toyota_stock_prices_df))
})

# Test 2: Confirm the number of columns is 2
test_that("toyota_stock_prices_df has 2 columns", {
  expect_equal(length(toyota_stock_prices_df), 2)
})

# Test 3: Confirm the number of rows is 255
test_that("toyota_stock_prices_df has 255 rows", {
  expect_equal(nrow(toyota_stock_prices_df), 255)
})

# Test 4: Confirm the column names are correct and in order
test_that("toyota_stock_prices_df has correct column names", {
  expect_named(toyota_stock_prices_df, c("Month", "Value"))
})

# Test 5: Confirm the column types are correct
test_that("toyota_stock_prices_df columns have correct types", {
  expect_type(toyota_stock_prices_df$Month, "integer")
  expect_type(toyota_stock_prices_df$Value, "double")
})
