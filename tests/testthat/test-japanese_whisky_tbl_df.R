# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# japanese_whisky_tbl_df


library(testthat)

# Test 1: Confirm the object exists
test_that("japanese_whisky_tbl_df exists", {
  expect_true(exists("japanese_whisky_tbl_df"))
})

# Test 2: Confirm the object is a tibble and data frame
test_that("japanese_whisky_tbl_df is a tibble", {
  expect_s3_class(japanese_whisky_tbl_df, "spec_tbl_df")
  expect_s3_class(japanese_whisky_tbl_df, "tbl_df")
  expect_s3_class(japanese_whisky_tbl_df, "tbl")
  expect_s3_class(japanese_whisky_tbl_df, "data.frame")
})

# Test 3: Confirm it has exactly 5 columns
test_that("japanese_whisky_tbl_df has 5 columns", {
  expect_equal(length(japanese_whisky_tbl_df), 5)
})

# Test 4: Confirm it has exactly 1130 rows
test_that("japanese_whisky_tbl_df has 1130 rows", {
  expect_equal(nrow(japanese_whisky_tbl_df), 1130)
})

# Test 5: Confirm column names are correct and in correct order
test_that("japanese_whisky_tbl_df has correct column names", {
  expect_named(japanese_whisky_tbl_df, c(
    "...1", "Bottle_name", "Brand", "Title", "Review_Content"
  ))
})

# Test 6: Confirm column types are correct
test_that("japanese_whisky_tbl_df columns have correct types", {
  expect_type(japanese_whisky_tbl_df[["...1"]], "double")
  expect_type(japanese_whisky_tbl_df[["Bottle_name"]], "character")
  expect_type(japanese_whisky_tbl_df[["Brand"]], "character")
  expect_type(japanese_whisky_tbl_df[["Title"]], "character")
  expect_type(japanese_whisky_tbl_df[["Review_Content"]], "character")
})
