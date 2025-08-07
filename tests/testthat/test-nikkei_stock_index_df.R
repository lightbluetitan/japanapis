# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# nikkei_stock_index_df

library(testthat)

# Test 1: Confirm the object is a data.frame (not a tibble)
test_that("nikkei_stock_index_df is a data.frame", {
  expect_s3_class(nikkei_stock_index_df, "data.frame")
  expect_false("tbl_df" %in% class(nikkei_stock_index_df))
})

# Test 2: Confirm the number of columns is 2
test_that("nikkei_stock_index_df has 2 columns", {
  expect_equal(length(nikkei_stock_index_df), 2)
})

# Test 3: Confirm the number of rows is 4246
test_that("nikkei_stock_index_df has 4246 rows", {
  expect_equal(nrow(nikkei_stock_index_df), 4246)
})

# Test 4: Confirm the column names are correct and in order
test_that("nikkei_stock_index_df has correct column names", {
  expect_named(nikkei_stock_index_df, c("index", "value"))
})

# Test 5: Confirm the column types are correct
test_that("nikkei_stock_index_df columns have correct types", {
  expect_type(nikkei_stock_index_df$index, "character")
  expect_type(nikkei_stock_index_df$value, "double")
})
