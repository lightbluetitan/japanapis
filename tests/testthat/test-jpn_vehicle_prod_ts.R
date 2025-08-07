# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# jpn_vehicle_prod_ts

library(testthat)

# Test 1: Confirm the object is a time series (ts)
test_that("jpn_vehicle_prod_ts is a time series object", {
  expect_s3_class(jpn_vehicle_prod_ts, "ts")
})

# Test 2: Confirm it has exactly 43 time points
test_that("jpn_vehicle_prod_ts has 43 observations", {
  expect_equal(length(jpn_vehicle_prod_ts), 43)
})

# Test 3: Confirm the time series starts in 1947 and ends in 1989
test_that("jpn_vehicle_prod_ts has correct time range", {
  expect_equal(start(jpn_vehicle_prod_ts), c(1947, 1))
  expect_equal(end(jpn_vehicle_prod_ts), c(1989, 1))
})

# Test 4: Confirm the frequency is annual (1)
test_that("jpn_vehicle_prod_ts has correct frequency", {
  expect_equal(frequency(jpn_vehicle_prod_ts), 1)
})
