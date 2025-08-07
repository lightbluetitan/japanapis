# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# kobe_quake_1995_ts

library(testthat)

# Test 1: Confirm the object exists
test_that("kobe_quake_1995_ts exists", {
  expect_true(exists("kobe_quake_1995_ts"))
})

# Test 2: Confirm the object is a ts object
test_that("kobe_quake_1995_ts is a ts object", {
  expect_s3_class(kobe_quake_1995_ts, "ts")
})

# Test 3: Confirm the time-series length is exactly 3048
test_that("kobe_quake_1995_ts has 3048 time points", {
  expect_equal(length(kobe_quake_1995_ts), 3048)
})

# Test 4: Confirm the start, end, and frequency are correct
test_that("kobe_quake_1995_ts has correct time attributes", {
  expect_equal(start(kobe_quake_1995_ts), c(1, 1))
  expect_equal(end(kobe_quake_1995_ts), c(3048, 1))
  expect_equal(frequency(kobe_quake_1995_ts), 1)
})
