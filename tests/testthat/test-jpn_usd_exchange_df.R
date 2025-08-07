# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# jpn_usd_exchange_df

library(testthat)

# Test 1: Confirm the object is a data frame (not a tibble)
test_that("jpn_usd_exchange_df is a data frame", {
  expect_s3_class(jpn_usd_exchange_df, "data.frame")
  expect_false("tbl_df" %in% class(jpn_usd_exchange_df))  # Ensure it's not a tibble
})

# Test 2: Confirm it has exactly 4 columns
test_that("jpn_usd_exchange_df has 4 columns", {
  expect_equal(length(jpn_usd_exchange_df), 4)
})

# Test 3: Confirm it has exactly 778 rows
test_that("jpn_usd_exchange_df has 778 rows", {
  expect_equal(nrow(jpn_usd_exchange_df), 778)
})

# Test 4: Confirm column names are correct
test_that("jpn_usd_exchange_df has correct column names", {
  expect_named(jpn_usd_exchange_df, c("date", "s", "f", "s30"))
})

# Test 5: Confirm column types are correct
test_that("jpn_usd_exchange_df columns have correct types", {
  expect_type(jpn_usd_exchange_df$date, "integer")
  expect_type(jpn_usd_exchange_df$s, "double")
  expect_type(jpn_usd_exchange_df$f, "double")
  expect_type(jpn_usd_exchange_df$s30, "double")
})
