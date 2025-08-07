# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_life_expectancy

library(testthat)

test_that("get_japan_life_expectancy() returns a tibble with expected structure and types", {
  skip_on_cran()
  result <- get_japan_life_expectancy()

  # Basic structure checks
  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value"))

  # Column types
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

test_that("get_japan_life_expectancy() returns 13 rows for years 2010-2022", {
  skip_on_cran()
  result <- get_japan_life_expectancy()

  expect_equal(nrow(result), 13)
  expect_true(all(result$year %in% 2010:2022))
})

test_that("get_japan_life_expectancy() has correct and consistent country and indicator labels", {
  skip_on_cran()
  result <- get_japan_life_expectancy()

  expect_true(all(result$country == "Japan"))
  expect_true(all(result$indicator == "Life expectancy at birth, total (years)"))
  expect_equal(length(unique(result$indicator)), 1)
  expect_equal(length(unique(result$country)), 1)
})

test_that("get_japan_life_expectancy() returns numeric values, no NA expected", {
  skip_on_cran()
  result <- get_japan_life_expectancy()

  expect_false(any(is.na(result$value)))
  expect_true(all(is.finite(result$value)))
})

test_that("get_japan_life_expectancy() returns years in descending order", {
  skip_on_cran()
  result <- get_japan_life_expectancy()

  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_japan_life_expectancy(): no year is missing", {
  skip_on_cran()
  result <- get_japan_life_expectancy()

  expect_false(any(is.na(result$year)))
})

