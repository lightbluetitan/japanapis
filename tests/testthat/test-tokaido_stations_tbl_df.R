# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# tokaido_stations_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble (tbl_df)
test_that("tokaido_stations_tbl_df is a tibble", {
  expect_s3_class(tokaido_stations_tbl_df, "tbl_df")
  expect_s3_class(tokaido_stations_tbl_df, "tbl")
  expect_s3_class(tokaido_stations_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 2 columns
test_that("tokaido_stations_tbl_df has 2 columns", {
  expect_equal(length(tokaido_stations_tbl_df), 2)
})

# Test 3: Confirm it has exactly 20 rows
test_that("tokaido_stations_tbl_df has 20 rows", {
  expect_equal(nrow(tokaido_stations_tbl_df), 20)
})

# Test 4: Confirm column names are correct
test_that("tokaido_stations_tbl_df has correct column names", {
  expect_named(tokaido_stations_tbl_df, c("st_code", "st_name"))
})

# Test 5: Confirm column types are correct
test_that("tokaido_stations_tbl_df columns have correct types", {
  expect_type(tokaido_stations_tbl_df$st_code, "character")
  expect_type(tokaido_stations_tbl_df$st_name, "character")
})
