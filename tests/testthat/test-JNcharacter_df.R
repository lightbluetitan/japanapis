# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# JNcharacter_df

library(testthat)

# Test 1: Confirm the object is a data frame (not a tibble)
test_that("JNcharacter_df is a data frame", {
  expect_s3_class(JNcharacter_df, "data.frame")
  expect_false("tbl_df" %in% class(JNcharacter_df))  # Ensure it's not a tibble
})

# Test 2: Confirm it has exactly 10 columns
test_that("JNcharacter_df has 10 columns", {
  expect_equal(length(JNcharacter_df), 10)
})

# Test 3: Confirm it has exactly 85 rows
test_that("JNcharacter_df has 85 rows", {
  expect_equal(nrow(JNcharacter_df), 85)
})

# Test 4: Confirm column names are correct
test_that("JNcharacter_df has correct column names", {
  expect_named(JNcharacter_df, c(
    "sex", "age", "pol.party", "education", "occupation",
    "born.again", "difficult", "pleasure", "women.job", "money"
  ))
})

# Test 5: Confirm column types are correct
test_that("JNcharacter_df columns have correct types", {
  expect_type(JNcharacter_df$sex, "double")
  expect_type(JNcharacter_df$age, "double")
  expect_type(JNcharacter_df$pol.party, "double")
  expect_type(JNcharacter_df$education, "double")
  expect_type(JNcharacter_df$occupation, "double")
  expect_type(JNcharacter_df$born.again, "double")
  expect_type(JNcharacter_df$difficult, "double")
  expect_type(JNcharacter_df$pleasure, "double")
  expect_type(JNcharacter_df$women.job, "double")
  expect_type(JNcharacter_df$money, "double")
})
