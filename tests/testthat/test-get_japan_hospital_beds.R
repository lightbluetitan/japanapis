# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_hospital_beds

library(testthat)

test_that("get_japan_hospital_beds() returns a tibble with correct structure and types", {
  skip_on_cran()
  result <- get_japan_hospital_beds()

  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value"))
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

test_that("get_japan_hospital_beds() returns data only for Japan", {
  skip_on_cran()
  result <- get_japan_hospital_beds()
  expect_true(all(result$country == "Japan"))
})

test_that("get_japan_hospital_beds() returns exactly 13 rows for years 2010 to 2022", {
  skip_on_cran()
  result <- get_japan_hospital_beds()
  expect_equal(nrow(result), 13)
  expect_true(all(result$year %in% 2010:2022))
})

test_that("get_japan_hospital_beds() includes the expected indicator label", {
  skip_on_cran()
  result <- get_japan_hospital_beds()
  expect_true(all(result$indicator == "Hospital beds (per 1,000 people)"))
})

test_that("get_japan_hospital_beds() may contain NA values in 'value' column", {
  skip_on_cran()
  result <- get_japan_hospital_beds()
  expect_true(any(is.na(result$value)))
  expect_true(all(is.finite(result$value) | is.na(result$value)))
})

test_that("get_japan_hospital_beds(): no missing values in 'year'", {
  skip_on_cran()
  result <- get_japan_hospital_beds()
  expect_false(any(is.na(result$year)))
})

test_that("get_japan_hospital_beds(): values are in descending year order", {
  skip_on_cran()
  result <- get_japan_hospital_beds()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_japan_hospital_beds(): 'indicator' is consistent across all rows", {
  skip_on_cran()
  result <- get_japan_hospital_beds()
  expect_equal(length(unique(result$indicator)), 1)
})

test_that("get_japan_hospital_beds(): 'country' is consistent across all rows", {
  skip_on_cran()
  result <- get_japan_hospital_beds()
  expect_equal(length(unique(result$country)), 1)
})
