# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# life_exp_japan_tbl_df

library(testthat)

# Test 1: Confirm the object exists
test_that("life_exp_japan_tbl_df exists", {
  expect_true(exists("life_exp_japan_tbl_df"))
})

# Test 2: Confirm class is a tibble/data frame
test_that("life_exp_japan_tbl_df is a tibble", {
  expect_s3_class(life_exp_japan_tbl_df, "spec_tbl_df")
  expect_s3_class(life_exp_japan_tbl_df, "tbl_df")
  expect_s3_class(life_exp_japan_tbl_df, "tbl")
  expect_s3_class(life_exp_japan_tbl_df, "data.frame")
})

# Test 3: Confirm it has exactly 23 columns
test_that("life_exp_japan_tbl_df has 23 columns", {
  expect_equal(length(life_exp_japan_tbl_df), 23)
})

# Test 4: Confirm it has exactly 47 rows
test_that("life_exp_japan_tbl_df has 47 rows", {
  expect_equal(nrow(life_exp_japan_tbl_df), 47)
})

# Test 5: Confirm column names are correct
test_that("life_exp_japan_tbl_df has correct column names", {
  expect_named(life_exp_japan_tbl_df, c(
    "Prefecture", "Life_expectancy", "Physician", "Junior_col", "University",
    "Public_Hosp", "Pshic_hosp", "Beds_psic", "Nurses", "Avg_hours", "Salary",
    "Elementary_school", "Sport_fac", "Park", "Forest", "Income_per capita",
    "Density_pop", "Hospitals", "Beds", "Ambulances", "Health_exp",
    "Educ_exp", "Welfare_exp"
  ))
})

# Test 6: Confirm data types of selected sample columns
test_that("life_exp_japan_tbl_df has correct data types (sample columns)", {
  expect_type(life_exp_japan_tbl_df[["Prefecture"]], "character")
  expect_type(life_exp_japan_tbl_df[["Life_expectancy"]], "double")
  expect_type(life_exp_japan_tbl_df[["Physician"]], "double")
  expect_type(life_exp_japan_tbl_df[["Beds"]], "double")
  expect_type(life_exp_japan_tbl_df[["Ambulances"]], "double")
  expect_type(life_exp_japan_tbl_df[["Welfare_exp"]], "double")
})
