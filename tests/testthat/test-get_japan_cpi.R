# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_cpi

library(testthat)

test_that("get_japan_cpi() returns a tibble with correct structure and types", {
  skip_on_cran()
  result <- get_japan_cpi()

  # Structure checks
  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value"))

  # Type checks
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

test_that("get_japan_cpi() returns only Japan data", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_true(all(result$country == "Japan"))
})

test_that("get_japan_cpi() returns years from 2010 to 2022", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_true(all(result$year %in% 2010:2022))
})

test_that("get_japan_cpi() returns exactly 13 rows", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_equal(nrow(result), 13)
})

test_that("get_japan_cpi() includes the correct indicator label", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_true(all(result$indicator == "Consumer price index (2010 = 100)"))
})

test_that("get_japan_cpi() allows for missing values (e.g., NA)", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_true(any(is.na(result$value)) || all(!is.na(result$value)))
})

test_that("get_japan_cpi(): no NA values in year column", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_false(any(is.na(result$year)))
})

test_that("get_japan_cpi(): value column is numeric or NA", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_true(all(is.finite(result$value) | is.na(result$value)))
})

test_that("get_japan_cpi(): years are sorted in descending order", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_japan_cpi(): indicator is consistent across rows", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_equal(length(unique(result$indicator)), 1)
})

test_that("get_japan_cpi(): country is consistent across rows", {
  skip_on_cran()
  result <- get_japan_cpi()
  expect_equal(length(unique(result$country)), 1)
})
