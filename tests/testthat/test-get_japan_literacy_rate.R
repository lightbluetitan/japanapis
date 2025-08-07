# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_literacy_rate

library(testthat)

test_that("get_japan_literacy_rate() returns a tibble with expected structure and types", {
  skip_on_cran()
  result <- get_japan_literacy_rate()

  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value"))

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "logical")  # Because all values are NA (logical NA)
})

test_that("get_japan_literacy_rate() returns 13 rows for years 2010 to 2022", {
  skip_on_cran()
  result <- get_japan_literacy_rate()

  expect_equal(nrow(result), 13)
  expect_true(all(result$year %in% 2010:2022))
})

test_that("get_japan_literacy_rate() contains expected indicator and country labels", {
  skip_on_cran()
  result <- get_japan_literacy_rate()

  expect_equal(length(unique(result$indicator)), 1)
  expect_equal(length(unique(result$country)), 1)
  expect_true(all(result$country == "Japan"))
  expect_true(all(result$indicator == "Literacy rate, adult total (% of people ages 15 and above)"))
})

test_that("get_japan_literacy_rate() allows NA values and all are NA (as expected)", {
  skip_on_cran()
  result <- get_japan_literacy_rate()

  expect_true(all(is.na(result$value)))
  expect_equal(sum(!is.na(result$value)), 0)
})

test_that("get_japan_literacy_rate() has years sorted in descending order", {
  skip_on_cran()
  result <- get_japan_literacy_rate()

  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})
