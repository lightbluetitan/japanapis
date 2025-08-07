# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_energy_use

library(testthat)

test_that("get_japan_energy_use() returns a tibble with correct structure and types", {
  skip_on_cran()
  result <- get_japan_energy_use()

  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value"))

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

test_that("get_japan_energy_use() returns only Japan data", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_true(all(result$country == "Japan"))
})

test_that("get_japan_energy_use() returns years from 2010 to 2022", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_true(all(result$year %in% 2010:2022))
  expect_equal(length(unique(result$year)), 13)
})

test_that("get_japan_energy_use() returns exactly 13 rows", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_equal(nrow(result), 13)
})

test_that("get_japan_energy_use() includes the correct indicator label", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_true(all(result$indicator == "Energy use (kg of oil equivalent per capita)"))
})

test_that("get_japan_energy_use() allows NA in value column", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_true(any(is.na(result$value)) || all(!is.na(result$value)))
})

test_that("get_japan_energy_use(): year column has no NA", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_false(any(is.na(result$year)))
})

test_that("get_japan_energy_use(): value column is numeric or NA", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_true(all(is.finite(result$value) | is.na(result$value)))
})

test_that("get_japan_energy_use(): years are sorted in descending order", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_japan_energy_use(): indicator is consistent across rows", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_equal(length(unique(result$indicator)), 1)
})

test_that("get_japan_energy_use(): country is consistent across rows", {
  skip_on_cran()
  result <- get_japan_energy_use()
  expect_equal(length(unique(result$country)), 1)
})
