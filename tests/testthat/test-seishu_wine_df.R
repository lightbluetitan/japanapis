# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# seishu_wine_df

library(testthat)

# Test 1: Confirm the object exists
test_that("seishu_wine_df exists", {
  expect_true(exists("seishu_wine_df"))
})

# Test 2: Confirm the object is a data frame (not a tibble)
test_that("seishu_wine_df is a data frame", {
  expect_s3_class(seishu_wine_df, "data.frame")
  expect_false("tbl_df" %in% class(seishu_wine_df))  # ensure not a tibble
})

# Test 3: Confirm it has exactly 10 columns
test_that("seishu_wine_df has 10 columns", {
  expect_equal(length(seishu_wine_df), 10)
})

# Test 4: Confirm it has exactly 30 rows
test_that("seishu_wine_df has 30 rows", {
  expect_equal(nrow(seishu_wine_df), 30)
})

# Test 5: Confirm column names are correct and in order
test_that("seishu_wine_df has correct column names", {
  expect_named(seishu_wine_df, c(
    "Taste", "Odor", "pH", "Acidity_1", "Acidity_2",
    "Sake_meter", "Direct_reducing_sugar", "Total_sugar",
    "Alcohol", "Formyl_nitrogen"
  ))
})

# Test 6: Confirm all columns are of type numeric
test_that("seishu_wine_df column types are all numeric", {
  expect_type(seishu_wine_df$Taste, "double")
  expect_type(seishu_wine_df$Odor, "double")
  expect_type(seishu_wine_df$pH, "double")
  expect_type(seishu_wine_df$Acidity_1, "double")
  expect_type(seishu_wine_df$Acidity_2, "double")
  expect_type(seishu_wine_df$Sake_meter, "double")
  expect_type(seishu_wine_df$Direct_reducing_sugar, "double")
  expect_type(seishu_wine_df$Total_sugar, "double")
  expect_type(seishu_wine_df$Alcohol, "double")
  expect_type(seishu_wine_df$Formyl_nitrogen, "double")
})
