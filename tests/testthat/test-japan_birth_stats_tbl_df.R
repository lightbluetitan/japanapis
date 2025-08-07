# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# japan_birth_stats_tbl_df


library(testthat)

# Test 1: Class inheritance check
test_that("japan_birth_stats_tbl_df is a spec_tbl_df", {
  expect_s3_class(japan_birth_stats_tbl_df, "spec_tbl_df")
  expect_s3_class(japan_birth_stats_tbl_df, "tbl_df")
  expect_s3_class(japan_birth_stats_tbl_df, "tbl")
  expect_s3_class(japan_birth_stats_tbl_df, "data.frame")
})

# Test 2: Column count check
test_that("japan_birth_stats_tbl_df has 51 columns", {
  expect_equal(length(japan_birth_stats_tbl_df), 51)
})

# Test 3: Row count check
test_that("japan_birth_stats_tbl_df has 124 rows", {
  expect_equal(nrow(japan_birth_stats_tbl_df), 124)
})

# Test 4: Column names check
test_that("japan_birth_stats_tbl_df has correct column names", {
  expect_named(japan_birth_stats_tbl_df, c(
    "...1", "year", "birth_total", "birth_male", "birth_female", "birth_rate",
    "birth_gender_ratio", "total_fertility_rate", "population_total", "population_male",
    "population_female", "infant_death_total", "infant_death_male", "infant_death_female",
    "infant_death_unknown_gender", "infant_death_rate", "infant_death_gender_ratio",
    "infant_deaths_in_total_deaths", "stillbirth_total", "stillbirth_male", "stillbirth_female",
    "stillbirth_unknown_gender", "stillbirth_rate", "stillbirth_gender_ratio",
    "firstborn", "secondborn", "thirdborn", "forthborn", "fifthborn_and_above",
    "weeks_under_28", "weeks_28-31", "weeks_32-36", "weeks_37-41", "weeks_over_42",
    "mother_age_avg", "mother_age_firstborn", "mother_age_secondborn", "mother_age_thirdborn",
    "mother_age_under_19", "mother_age_20-24", "mother_age_25-29", "mother_age_30-34",
    "mother_age_35-39", "mother_age_40-44", "mother_age_over_45",
    "father_age_avg", "father_age_firstborn", "father_age_secondborn", "father_age_thirdborn",
    "legitimate_child", "illegitimate_child"
  ))
})

# Test 5: All columns are numeric
test_that("All columns in japan_birth_stats_tbl_df are numeric", {
  for (col in names(japan_birth_stats_tbl_df)) {
    expect_type(japan_birth_stats_tbl_df[[col]], "double")
  }
})
