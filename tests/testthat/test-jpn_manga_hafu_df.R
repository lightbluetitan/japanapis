# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# jpn_manga_hafu_df

library(testthat)

# Test 1: Confirm the object is a base data frame (not a tibble)
test_that("jpn_manga_hafu_df is a data.frame", {
  expect_s3_class(jpn_manga_hafu_df, "data.frame")
  expect_false("tbl_df" %in% class(jpn_manga_hafu_df))  # ensure it's not a tibble
})

# Test 2: Confirm it has exactly 9 columns
test_that("jpn_manga_hafu_df has 9 columns", {
  expect_equal(length(jpn_manga_hafu_df), 9)
})

# Test 3: Confirm it has exactly 296 rows
test_that("jpn_manga_hafu_df has 296 rows", {
  expect_equal(nrow(jpn_manga_hafu_df), 296)
})

# Test 4: Confirm column names are correct
test_that("jpn_manga_hafu_df has correct column names", {
  expect_named(jpn_manga_hafu_df, c(
    "Year", "Series", "Character", "Gender",
    "Father", "Mother", "Eyes", "Hair", "Notes"
  ))
})

# Test 5: Confirm column types are correct
test_that("jpn_manga_hafu_df columns have correct types", {
  expect_type(jpn_manga_hafu_df$Year, "integer")
  expect_s3_class(jpn_manga_hafu_df$Series, "factor")
  expect_s3_class(jpn_manga_hafu_df$Character, "factor")
  expect_s3_class(jpn_manga_hafu_df$Gender, "factor")
  expect_s3_class(jpn_manga_hafu_df$Father, "factor")
  expect_s3_class(jpn_manga_hafu_df$Mother, "factor")
  expect_s3_class(jpn_manga_hafu_df$Eyes, "factor")
  expect_s3_class(jpn_manga_hafu_df$Hair, "factor")
  expect_s3_class(jpn_manga_hafu_df$Notes, "factor")
})
