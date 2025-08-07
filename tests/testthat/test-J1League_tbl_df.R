# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# J1League_tbl_df

library(testthat)

# Test 1: Confirm the object exists
test_that("J1League_tbl_df exists", {
  expect_true(exists("J1League_tbl_df"))
})

# Test 2: Confirm the object is a tibble and data frame
test_that("J1League_tbl_df is a tibble", {
  expect_s3_class(J1League_tbl_df, "spec_tbl_df")
  expect_s3_class(J1League_tbl_df, "tbl_df")
  expect_s3_class(J1League_tbl_df, "tbl")
  expect_s3_class(J1League_tbl_df, "data.frame")
})

# Test 3: Confirm it has exactly 7 columns
test_that("J1League_tbl_df has 7 columns", {
  expect_equal(length(J1League_tbl_df), 7)
})

# Test 4: Confirm it has exactly 3213 rows
test_that("J1League_tbl_df has 3213 rows", {
  expect_equal(nrow(J1League_tbl_df), 3213)
})

# Test 5: Confirm column names are correct and in correct order
test_that("J1League_tbl_df has correct column names", {
  expect_named(J1League_tbl_df, c(
    "Season", "DateTime", "Home", "Away", "HG", "AG", "Res"
  ))
})

# Test 6: Confirm column types are correct
test_that("J1League_tbl_df columns have correct types", {
  expect_type(J1League_tbl_df[["Season"]], "double")
  expect_s3_class(J1League_tbl_df[["DateTime"]], "POSIXct")
  expect_type(J1League_tbl_df[["Home"]], "character")
  expect_type(J1League_tbl_df[["Away"]], "character")
  expect_type(J1League_tbl_df[["HG"]], "double")
  expect_type(J1League_tbl_df[["AG"]], "double")
  expect_type(J1League_tbl_df[["Res"]], "character")
})
