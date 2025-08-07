# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# earthquake_station_sf

library(testthat)

# Test 1: Confirm the object is of class 'sf', and not a plain data.frame or tibble
test_that("earthquake_station_sf is an sf object", {
  expect_s3_class(earthquake_station_sf, "sf")
  expect_s3_class(earthquake_station_sf, "tbl_df")
  expect_s3_class(earthquake_station_sf, "data.frame")
})

# Test 2: Confirm the number of columns is exactly 7
test_that("earthquake_station_sf has 7 columns", {
  expect_equal(length(earthquake_station_sf), 7)
})

# Test 3: Confirm the number of rows is 671
test_that("earthquake_station_sf has 671 rows", {
  expect_equal(nrow(earthquake_station_sf), 671)
})

# Test 4: Confirm the column names are correct and in order
test_that("earthquake_station_sf has correct column names", {
  expect_named(earthquake_station_sf, c(
    "prefecture", "area", "station_name", "address",
    "observation_begin", "observation_end", "geometry"
  ))
})

# Test 5: Confirm the data types of each column
test_that("earthquake_station_sf columns have correct types", {
  expect_type(earthquake_station_sf$prefecture, "character")
  expect_type(earthquake_station_sf$area, "character")
  expect_type(earthquake_station_sf$station_name, "character")
  expect_type(earthquake_station_sf$address, "character")
  expect_type(earthquake_station_sf$observation_begin, "character")
  expect_type(earthquake_station_sf$observation_end, "character")
  expect_s3_class(earthquake_station_sf$geometry, "sfc")  # Simple feature geometry column
})
