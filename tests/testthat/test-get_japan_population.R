# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_population

library(testthat)

test_that("get_japan_population() returns a tibble with correct structure and types", {
  result <- get_japan_population()

  # Check class
  expect_s3_class(result, "tbl_df")

  # Check column names
  expected_names <- c("indicator", "country", "year", "value", "value_label")
  expect_named(result, expected_names)

  # Check column types
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "integer")
  expect_type(result$value_label, "character")
})

test_that("get_japan_population() returns 13 rows for years 2010 to 2022", {
  result <- get_japan_population()
  expect_equal(nrow(result), 13)
  expect_true(all(result$year %in% 2010:2022))
})

test_that("get_japan_population(): country column contains only 'Japan'", {
  result <- get_japan_population()
  expect_equal(length(unique(result$country)), 1)
  expect_true(all(result$country == "Japan"))
})

test_that("get_japan_population(): indicator column contains only one consistent label", {
  result <- get_japan_population()
  expect_equal(length(unique(result$indicator)), 1)
  expect_true(all(result$indicator == "Population, total"))
})

test_that("get_japan_population(): year column is sorted in descending order", {
  result <- get_japan_population()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_japan_population(): values are integers or NA", {
  result <- get_japan_population()
  expect_true(all(is.integer(result$value) | is.na(result$value)))
})

test_that("get_japan_population(): all year values are not NA", {
  result <- get_japan_population()
  expect_false(any(is.na(result$year)))
})

test_that("get_japan_population(): all 'value' entries are finite or NA", {
  result <- get_japan_population()
  expect_true(all(is.finite(result$value) | is.na(result$value)))
})

test_that("get_japan_population(): value_label column matches the formatted version of value", {
  result <- get_japan_population()
  formatted_values <- format(result$value, big.mark = ",", scientific = FALSE, trim = TRUE)
  expect_equal(result$value_label, formatted_values)
})
