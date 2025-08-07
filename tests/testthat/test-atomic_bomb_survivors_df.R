# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# atomic_bomb_survivors_df

library(testthat)

# Test 1: Confirm the object is a data.frame (not a tibble)
test_that("atomic_bomb_survivors_df is a data.frame", {
  expect_s3_class(atomic_bomb_survivors_df, "data.frame")
  expect_false("tbl_df" %in% class(atomic_bomb_survivors_df))
})

# Test 2: Confirm the number of columns is 4
test_that("atomic_bomb_survivors_df has 4 columns", {
  expect_equal(length(atomic_bomb_survivors_df), 4)
})

# Test 3: Confirm the number of rows is 84
test_that("atomic_bomb_survivors_df has 84 rows", {
  expect_equal(nrow(atomic_bomb_survivors_df), 84)
})

# Test 4: Confirm the column names are correct and in order
test_that("atomic_bomb_survivors_df has correct column names", {
  expect_named(atomic_bomb_survivors_df, c(
    "Radians", "Count.Type", "Count.Age.Group", "Frequency"
  ))
})

# Test 5: Confirm the column types are correct
test_that("atomic_bomb_survivors_df columns have correct types", {
  expect_type(atomic_bomb_survivors_df$Radians, "integer")
  expect_s3_class(atomic_bomb_survivors_df$Count.Type, "factor")
  expect_s3_class(atomic_bomb_survivors_df$Count.Age.Group, "factor")
  expect_type(atomic_bomb_survivors_df$Frequency, "integer")
})
