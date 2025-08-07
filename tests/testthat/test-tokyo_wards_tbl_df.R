# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# tokyo_wards_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble
test_that("tokyo_wards_tbl_df is a tibble", {
  expect_s3_class(tokyo_wards_tbl_df, "tbl_df")
  expect_s3_class(tokyo_wards_tbl_df, "tbl")
  expect_s3_class(tokyo_wards_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 5 columns
test_that("tokyo_wards_tbl_df has 5 columns", {
  expect_equal(length(tokyo_wards_tbl_df), 5)
})

# Test 3: Confirm it has exactly 23 rows
test_that("tokyo_wards_tbl_df has 23 rows", {
  expect_equal(nrow(tokyo_wards_tbl_df), 23)
})

# Test 4: Confirm column names are correct
test_that("tokyo_wards_tbl_df has correct column names", {
  expect_named(tokyo_wards_tbl_df, c("no", "ward", "ward_kanji", "x", "y"))
})

# Test 5: Confirm column types are correct
test_that("tokyo_wards_tbl_df columns have correct types", {
  expect_type(tokyo_wards_tbl_df$no, "character")
  expect_type(tokyo_wards_tbl_df$ward, "character")
  expect_type(tokyo_wards_tbl_df$ward_kanji, "character")
  expect_type(tokyo_wards_tbl_df$x, "double")
  expect_type(tokyo_wards_tbl_df$y, "double")
})
