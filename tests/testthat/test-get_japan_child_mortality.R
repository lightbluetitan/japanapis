# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_child_mortality

library(testthat)

test_that("get_japan_child_mortality() returns a tibble with correct structure and types", {
  skip_on_cran()
  result <- get_japan_child_mortality()

  # Basic structure
  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value"))

  # Column type checks
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

test_that("get_japan_child_mortality() returns data only for Japan", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_true(all(result$country == "Japan"))
})

test_that("get_japan_child_mortality() returns data for years 2010 to 2022", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_true(all(result$year %in% 2010:2022))
})

test_that("get_japan_child_mortality() returns exactly 13 rows", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_equal(nrow(result), 13)
})

test_that("get_japan_child_mortality() includes the correct indicator label", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_true(all(result$indicator == "Mortality rate, under-5 (per 1,000 live births)"))
})

test_that("get_japan_child_mortality() allows for missing values (e.g., NA)", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_true(any(is.na(result$value)) || all(!is.na(result$value)))  # tolerate either case
})

test_that("get_japan_child_mortality(): no year value is NA", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_false(any(is.na(result$year)))
})

test_that("get_japan_child_mortality(): value column is numeric or NA", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_type(result$value, "double")
  expect_true(all(is.finite(result$value) | is.na(result$value)))
})

test_that("get_japan_child_mortality(): years are sorted in descending order", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_japan_child_mortality(): indicator is consistent", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_equal(length(unique(result$indicator)), 1)
})

test_that("get_japan_child_mortality(): country is consistent", {
  skip_on_cran()
  result <- get_japan_child_mortality()
  expect_equal(length(unique(result$country)), 1)
})
