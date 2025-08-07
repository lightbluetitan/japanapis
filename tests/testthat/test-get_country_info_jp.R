# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_country_info_jp

library(testthat)

test_that("get_country_info_jp() returns a tibble with expected structure and types", {
  skip_on_cran()
  result <- get_country_info_jp()

  # Class check
  expect_s3_class(result, "tbl_df")

  # Dimension check
  expect_equal(nrow(result), 1)
  expect_equal(ncol(result), 8)

  # Column name check
  expected_names <- c(
    "name_common", "name_official", "region", "subregion",
    "capital", "area", "population", "languages"
  )
  expect_named(result, expected_names)

  # Column type checks
  expect_type(result$name_common, "character")
  expect_type(result$name_official, "character")
  expect_type(result$region, "character")
  expect_type(result$subregion, "character")
  expect_type(result$capital, "character")
  expect_type(result$languages, "character")

  expect_type(result$area, "double")
  expect_type(result$population, "integer")
})

test_that("get_country_info_jp() returns correct values for Japan", {
  skip_on_cran()
  result <- get_country_info_jp()

  expect_equal(result$name_common, "Japan")
  expect_equal(result$name_official, "Japan")
  expect_equal(result$region, "Asia")
  expect_equal(result$subregion, "Eastern Asia")
  expect_equal(result$capital, "Tokyo")
  expect_true(is.numeric(result$area))
  expect_true(is.numeric(result$population))
  expect_true(grepl("Japanese", result$languages))
})

test_that("get_country_info_jp() has non-missing values for all fields", {
  skip_on_cran()
  result <- get_country_info_jp()

  expect_false(any(is.na(result)))
})
