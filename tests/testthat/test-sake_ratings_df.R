# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# sake_ratings_df

library(testthat)

# Test 1: Confirm the object exists
test_that("sake_ratings_df exists", {
  expect_true(exists("sake_ratings_df"))
})

# Test 2: Confirm the object is a data frame (not tibble)
test_that("sake_ratings_df is a data frame", {
  expect_s3_class(sake_ratings_df, "data.frame")
  expect_false("tbl_df" %in% class(sake_ratings_df))  # confirm not tibble
})

# Test 3: Confirm it has exactly 10 columns
test_that("sake_ratings_df has 10 columns", {
  expect_equal(length(sake_ratings_df), 10)
})

# Test 4: Confirm it has exactly 30 rows
test_that("sake_ratings_df has 30 rows", {
  expect_equal(nrow(sake_ratings_df), 30)
})

# Test 5: Confirm column names are correct and in order
test_that("sake_ratings_df has correct column names", {
  expect_named(sake_ratings_df, c(
    "taste", "smell", "pH", "acidity1", "acidity2",
    "sake", "rsugar", "tsugar", "alcohol", "nitrogen"
  ))
})

# Test 6: Confirm all columns are of type numeric
test_that("sake_ratings_df column types are all numeric", {
  expect_type(sake_ratings_df$taste, "double")
  expect_type(sake_ratings_df$smell, "double")
  expect_type(sake_ratings_df$pH, "double")
  expect_type(sake_ratings_df$acidity1, "double")
  expect_type(sake_ratings_df$acidity2, "double")
  expect_type(sake_ratings_df$sake, "double")
  expect_type(sake_ratings_df$rsugar, "double")
  expect_type(sake_ratings_df$tsugar, "double")
  expect_type(sake_ratings_df$alcohol, "double")
  expect_type(sake_ratings_df$nitrogen, "double")
})
