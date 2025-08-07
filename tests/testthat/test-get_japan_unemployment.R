# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_unemployment

library(testthat)

test_that("get_japan_unemployment() returns a tibble with correct structure and types", {
  result <- get_japan_unemployment()

  # Check class
  expect_s3_class(result, "tbl_df")

  # Check column names
  expected_names <- c("indicator", "country", "year", "value")
  expect_named(result, expected_names)

  # Check column types
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

test_that("get_japan_unemployment() returns 13 rows for years 2010 to 2022", {
  result <- get_japan_unemployment()
  expect_equal(nrow(result), 13)
  expect_true(all(result$year %in% 2010:2022))
})

test_that("get_japan_unemployment(): country column contains only 'Japan'", {
  result <- get_japan_unemployment()
  expect_equal(length(unique(result$country)), 1)
  expect_true(all(result$country == "Japan"))
})

test_that("get_japan_unemployment(): indicator column is consistent across all rows", {
  result <- get_japan_unemployment()
  expect_equal(length(unique(result$indicator)), 1)
  expect_true(all(result$indicator == "Unemployment, total (% of total labor force) (modeled ILO estimate)"))
})

test_that("get_japan_unemployment(): year column is sorted in descending order", {
  result <- get_japan_unemployment()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_japan_unemployment(): values are numeric or NA", {
  result <- get_japan_unemployment()
  expect_true(all(is.numeric(result$value) | is.na(result$value)))
})

test_that("get_japan_unemployment(): no year values are NA", {
  result <- get_japan_unemployment()
  expect_false(any(is.na(result$year)))
})

test_that("get_japan_unemployment(): all 'value' entries are finite or NA", {
  result <- get_japan_unemployment()
  expect_true(all(is.finite(result$value) | is.na(result$value)))
})
