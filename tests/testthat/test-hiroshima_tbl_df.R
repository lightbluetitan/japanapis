# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# hiroshima_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble
test_that("hiroshima_tbl_df is a tibble", {
  expect_s3_class(hiroshima_tbl_df, "tbl_df")
  expect_s3_class(hiroshima_tbl_df, "tbl")
  expect_s3_class(hiroshima_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 4 columns
test_that("hiroshima_tbl_df has 4 columns", {
  expect_equal(length(hiroshima_tbl_df), 4)
})

# Test 3: Confirm it has exactly 6 rows
test_that("hiroshima_tbl_df has 6 rows", {
  expect_equal(nrow(hiroshima_tbl_df), 6)
})

# Test 4: Confirm column names are correct
test_that("hiroshima_tbl_df has correct column names", {
  expect_named(hiroshima_tbl_df, c("radiation", "leukemia", "other cancer", "total cancers"))
})

# Test 5: Confirm column types are correct
test_that("hiroshima_tbl_df columns have correct types", {
  expect_type(hiroshima_tbl_df$radiation, "character")
  expect_type(hiroshima_tbl_df$leukemia, "double")
  expect_type(hiroshima_tbl_df$`other cancer`, "double")
  expect_type(hiroshima_tbl_df$`total cancers`, "double")
})
