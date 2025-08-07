# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# jpn_prefectures_tbl_df


library(testthat)

# Test 1: Confirm the object is a tibble
test_that("jpn_prefectures_tbl_df is a tibble", {
  expect_s3_class(jpn_prefectures_tbl_df, "tbl_df")
  expect_s3_class(jpn_prefectures_tbl_df, "tbl")
  expect_s3_class(jpn_prefectures_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 8 columns
test_that("jpn_prefectures_tbl_df has 8 columns", {
  expect_equal(length(jpn_prefectures_tbl_df), 8)
})

# Test 3: Confirm it has exactly 47 rows
test_that("jpn_prefectures_tbl_df has 47 rows", {
  expect_equal(nrow(jpn_prefectures_tbl_df), 47)
})

# Test 4: Confirm column names are correct
test_that("jpn_prefectures_tbl_df has correct column names", {
  expect_named(jpn_prefectures_tbl_df, c(
    "jis_code", "prefecture", "region", "major_island",
    "prefecture_kanji", "region_kanji", "x", "y"
  ))
})

# Test 5: Confirm column types are correct
test_that("jpn_prefectures_tbl_df columns have correct types", {
  expect_type(jpn_prefectures_tbl_df$jis_code, "character")
  expect_type(jpn_prefectures_tbl_df$prefecture, "character")
  expect_s3_class(jpn_prefectures_tbl_df$region, "factor")
  expect_type(jpn_prefectures_tbl_df$major_island, "character")
  expect_type(jpn_prefectures_tbl_df$prefecture_kanji, "character")
  expect_s3_class(jpn_prefectures_tbl_df$region_kanji, "factor")
  expect_type(jpn_prefectures_tbl_df$x, "integer")
  expect_type(jpn_prefectures_tbl_df$y, "integer")
})
