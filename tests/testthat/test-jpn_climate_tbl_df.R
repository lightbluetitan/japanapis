# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# jpn_climate_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble
test_that("jpn_climate_tbl_df is a tibble", {
  expect_s3_class(jpn_climate_tbl_df, "tbl_df")
  expect_s3_class(jpn_climate_tbl_df, "tbl")
  expect_s3_class(jpn_climate_tbl_df, "data.frame")
})

# Test 2: Confirm the number of columns is 14
test_that("jpn_climate_tbl_df has 14 columns", {
  expect_equal(length(jpn_climate_tbl_df), 14)
})

# Test 3: Confirm the number of rows is 3768
test_that("jpn_climate_tbl_df has 3768 rows", {
  expect_equal(nrow(jpn_climate_tbl_df), 3768)
})

# Test 4: Confirm the column names are correct and in order
test_that("jpn_climate_tbl_df has correct column names", {
  expect_named(jpn_climate_tbl_df, c(
    "no", "station", "month", "temperature", "precipitation",
    "snowfall", "insolation", "country", "period", "altitude",
    "latitude", "longitude", "NS", "WE"
  ))
})

# Test 5: Confirm the column types are correct
test_that("jpn_climate_tbl_df columns have correct types", {
  expect_type(jpn_climate_tbl_df$no, "double")
  expect_type(jpn_climate_tbl_df$station, "character")
  expect_type(jpn_climate_tbl_df$month, "double")
  expect_type(jpn_climate_tbl_df$temperature, "double")
  expect_type(jpn_climate_tbl_df$precipitation, "double")
  expect_type(jpn_climate_tbl_df$snowfall, "double")
  expect_type(jpn_climate_tbl_df$insolation, "double")
  expect_type(jpn_climate_tbl_df$country, "character")
  expect_type(jpn_climate_tbl_df$period, "character")
  expect_type(jpn_climate_tbl_df$altitude, "double")
  expect_type(jpn_climate_tbl_df$latitude, "double")
  expect_type(jpn_climate_tbl_df$longitude, "double")
  expect_type(jpn_climate_tbl_df$NS, "character")
  expect_type(jpn_climate_tbl_df$WE, "character")
})
