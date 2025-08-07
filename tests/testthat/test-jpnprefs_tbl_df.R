# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# jpnprefs_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble (tbl_df)
test_that("jpnprefs_tbl_df is a tibble", {
  expect_s3_class(jpnprefs_tbl_df, "tbl_df")
  expect_s3_class(jpnprefs_tbl_df, "tbl")
  expect_s3_class(jpnprefs_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 5 columns
test_that("jpnprefs_tbl_df has 5 columns", {
  expect_equal(length(jpnprefs_tbl_df), 5)
})

# Test 3: Confirm it has exactly 47 rows
test_that("jpnprefs_tbl_df has 47 rows", {
  expect_equal(nrow(jpnprefs_tbl_df), 47)
})

# Test 4: Confirm column names are correct
test_that("jpnprefs_tbl_df has correct column names", {
  expect_named(jpnprefs_tbl_df, c(
    "jis_code", "prefecture_kanji", "prefecture",
    "region", "major_island"
  ))
})

# Test 5: Confirm column types are correct
test_that("jpnprefs_tbl_df columns have correct types", {
  expect_type(jpnprefs_tbl_df$jis_code, "character")
  expect_type(jpnprefs_tbl_df$prefecture_kanji, "character")
  expect_type(jpnprefs_tbl_df$prefecture, "character")
  expect_type(jpnprefs_tbl_df$region, "character")
  expect_type(jpnprefs_tbl_df$major_island, "character")
})
