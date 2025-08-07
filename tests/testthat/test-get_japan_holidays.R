# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_japan_holidays

library(testthat)

test_that("get_japan_holidays() returns a tibble with expected structure and types", {
  skip_on_cran()
  result <- get_japan_holidays(2025)

  # Check class
  expect_s3_class(result, "tbl_df")

  # Check that there are rows and exactly 3 columns
  expect_gt(nrow(result), 0)
  expect_equal(ncol(result), 3)

  # Check column names
  expect_named(result, c("date", "local_name", "name"))

  # Check column types
  expect_s3_class(result$date, "Date")
  expect_type(result$local_name, "character")
  expect_type(result$name, "character")
})

test_that("get_japan_holidays() returns correct holidays for 2025", {
  skip_on_cran()
  result <- get_japan_holidays(2025)

  # Expected English holiday names from official API
  expected_holidays <- c(
    "New Year's Day",
    "Coming of Age Day",
    "Foundation Day",
    "The Emperor's Birthday",
    "Vernal Equinox Day",
    "Shōwa Day",
    "Constitution Memorial Day",
    "Greenery Day",
    "Children's Day",
    "Marine Day",
    "Mountain Day",
    "Respect for the Aged Day",
    "Autumnal Equinox Day",
    "Sports Day",
    "Culture Day",
    "Labour Thanksgiving Day"
  )

  # Check that all expected holidays are present
  expect_true(all(expected_holidays %in% result$name))

  # Check row count is exactly 16
  expect_equal(nrow(result), 16)
})

test_that("get_japan_holidays() returns correct date format", {
  skip_on_cran()
  result <- get_japan_holidays(2025)

  # All dates should be valid Date class and year should be 2025
  expect_true(all(format(result$date, "%Y") == "2025"))
})

test_that("get_japan_holidays() handles invalid input", {
  expect_error(get_japan_holidays("two thousand twenty-five"))
  expect_error(get_japan_holidays(999))   # Too far back
  expect_error(get_japan_holidays(3000))  # Future data might not be available
})
