# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# jpn_suicides_tbl_df

library(testthat)

# Test 1: Confirm the object exists
test_that("jpn_suicides_tbl_df exists", {
  expect_true(exists("jpn_suicides_tbl_df"))
})

# Test 2: Confirm the object is a tibble and data frame
test_that("jpn_suicides_tbl_df is a tibble", {
  expect_s3_class(jpn_suicides_tbl_df, "spec_tbl_df")
  expect_s3_class(jpn_suicides_tbl_df, "tbl_df")
  expect_s3_class(jpn_suicides_tbl_df, "tbl")
  expect_s3_class(jpn_suicides_tbl_df, "data.frame")
})

# Test 3: Confirm it has exactly 14 columns
test_that("jpn_suicides_tbl_df has 14 columns", {
  expect_equal(length(jpn_suicides_tbl_df), 14)
})

# Test 4: Confirm it has exactly 45 rows
test_that("jpn_suicides_tbl_df has 45 rows", {
  expect_equal(nrow(jpn_suicides_tbl_df), 45)
})

# Test 5: Confirm column names are correct and in correct order
test_that("jpn_suicides_tbl_df has correct column names", {
  expect_named(jpn_suicides_tbl_df, c(
    "year",
    "num_suicide_male",
    "num_suicide_female",
    "suicide_rate",
    "suicide_rate_male",
    "suicide_rate_female",
    "num_suicide_age_0_19",
    "num_suicide_age_20_29",
    "num_suicide_age_30_39",
    "num_suicide_age_40_49",
    "num_suicide_age_50_59",
    "num_suicide_60_plus",
    "num_suicide_age_unknown",
    "num_suicide_total"
  ))
})

# Test 6: Confirm column types are correct
test_that("jpn_suicides_tbl_df columns have correct types", {
  expect_type(jpn_suicides_tbl_df[["year"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_male"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_female"]], "double")
  expect_type(jpn_suicides_tbl_df[["suicide_rate"]], "double")
  expect_type(jpn_suicides_tbl_df[["suicide_rate_male"]], "double")
  expect_type(jpn_suicides_tbl_df[["suicide_rate_female"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_age_0_19"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_age_20_29"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_age_30_39"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_age_40_49"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_age_50_59"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_60_plus"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_age_unknown"]], "double")
  expect_type(jpn_suicides_tbl_df[["num_suicide_total"]], "double")
})
