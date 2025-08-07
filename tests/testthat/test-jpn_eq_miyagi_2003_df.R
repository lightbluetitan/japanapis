# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# jpn_eq_miyagi_2003_df

library(testthat)

# Test 1: Confirm the object is a data frame (not a tibble)
test_that("jpn_eq_miyagi_2003_df is a data frame", {
  expect_s3_class(jpn_eq_miyagi_2003_df, "data.frame")
  expect_false("tbl_df" %in% class(jpn_eq_miyagi_2003_df))  # Ensure it's not a tibble
})

# Test 2: Confirm it has exactly 5 columns
test_that("jpn_eq_miyagi_2003_df has 5 columns", {
  expect_equal(length(jpn_eq_miyagi_2003_df), 5)
})

# Test 3: Confirm it has exactly 2305 rows
test_that("jpn_eq_miyagi_2003_df has 2305 rows", {
  expect_equal(nrow(jpn_eq_miyagi_2003_df), 2305)
})

# Test 4: Confirm column names are correct
test_that("jpn_eq_miyagi_2003_df has correct column names", {
  expect_named(jpn_eq_miyagi_2003_df, c(
    "time", "longitude", "latitude", "depth", "magnitude"
  ))
})

# Test 5: Confirm column types are correct
test_that("jpn_eq_miyagi_2003_df columns have correct types", {
  expect_type(jpn_eq_miyagi_2003_df$time, "double")
  expect_type(jpn_eq_miyagi_2003_df$longitude, "double")
  expect_type(jpn_eq_miyagi_2003_df$latitude, "double")
  expect_type(jpn_eq_miyagi_2003_df$depth, "double")
  expect_type(jpn_eq_miyagi_2003_df$magnitude, "double")
})
