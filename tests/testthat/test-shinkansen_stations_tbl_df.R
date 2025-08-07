# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# shinkansen_stations_tbl_df

library(testthat)

# Test 1: Confirm class inheritance
test_that("shinkansen_stations_tbl_df is a spec_tbl_df", {
  expect_s3_class(shinkansen_stations_tbl_df, "spec_tbl_df")
  expect_s3_class(shinkansen_stations_tbl_df, "tbl_df")
  expect_s3_class(shinkansen_stations_tbl_df, "tbl")
  expect_s3_class(shinkansen_stations_tbl_df, "data.frame")
})

# Test 2: Confirm number of columns is 6
test_that("shinkansen_stations_tbl_df has 6 columns", {
  expect_equal(length(shinkansen_stations_tbl_df), 6)
})

# Test 3: Confirm number of rows is 113
test_that("shinkansen_stations_tbl_df has 113 rows", {
  expect_equal(nrow(shinkansen_stations_tbl_df), 113)
})

# Test 4: Confirm correct column names and order
test_that("shinkansen_stations_tbl_df has correct column names", {
  expect_named(shinkansen_stations_tbl_df, c(
    "Station_Name", "Shinkansen_Line", "Year",
    "Prefecture", "Distance from Tokyo st", "Company"
  ))
})

# Test 5: Confirm each column has the expected type
test_that("shinkansen_stations_tbl_df columns have correct types", {
  expect_type(shinkansen_stations_tbl_df$Station_Name, "character")
  expect_type(shinkansen_stations_tbl_df$Shinkansen_Line, "character")
  expect_type(shinkansen_stations_tbl_df$Year, "double")  # numeric is "double"
  expect_type(shinkansen_stations_tbl_df$Prefecture, "character")
  expect_type(shinkansen_stations_tbl_df$`Distance from Tokyo st`, "double")
  expect_type(shinkansen_stations_tbl_df$Company, "character")
})
