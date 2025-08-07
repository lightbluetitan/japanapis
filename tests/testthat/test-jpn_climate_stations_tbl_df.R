# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# jpn_climate_stations_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble
test_that("jpn_climate_stations_tbl_df is a tibble", {
  expect_s3_class(jpn_climate_stations_tbl_df, "tbl_df")
  expect_s3_class(jpn_climate_stations_tbl_df, "tbl")
  expect_s3_class(jpn_climate_stations_tbl_df, "data.frame")
})

# Test 2: Confirm the number of columns is 11
test_that("jpn_climate_stations_tbl_df has 11 columns", {
  expect_equal(length(jpn_climate_stations_tbl_df), 11)
})

# Test 3: Confirm the number of rows is 157
test_that("jpn_climate_stations_tbl_df has 157 rows", {
  expect_equal(nrow(jpn_climate_stations_tbl_df), 157)
})

# Test 4: Confirm the column names are correct and in order
test_that("jpn_climate_stations_tbl_df has correct column names", {
  expect_named(jpn_climate_stations_tbl_df, c(
    "region", "pref", "no", "station", "altitude",
    "latitude", "longitude", "NS", "WE", "yomi", "city"
  ))
})

# Test 5: Confirm the column types are correct (all character)
test_that("jpn_climate_stations_tbl_df columns have correct types", {
  expect_type(jpn_climate_stations_tbl_df$region, "character")
  expect_type(jpn_climate_stations_tbl_df$pref, "character")
  expect_type(jpn_climate_stations_tbl_df$no, "character")
  expect_type(jpn_climate_stations_tbl_df$station, "character")
  expect_type(jpn_climate_stations_tbl_df$altitude, "character")
  expect_type(jpn_climate_stations_tbl_df$latitude, "character")
  expect_type(jpn_climate_stations_tbl_df$longitude, "character")
  expect_type(jpn_climate_stations_tbl_df$NS, "character")
  expect_type(jpn_climate_stations_tbl_df$WE, "character")
  expect_type(jpn_climate_stations_tbl_df$yomi, "character")
  expect_type(jpn_climate_stations_tbl_df$city, "character")
})
