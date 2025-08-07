# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# japan_population_tbl_df

library(testthat)

test_that("japan_population_tbl_df has correct structure", {
  expect_true(exists("japan_population_tbl_df"))
  expect_s3_class(japan_population_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
  expect_equal(ncol(japan_population_tbl_df), 7)
  expect_equal(nrow(japan_population_tbl_df), 2632)
})

test_that("japan_population_tbl_df has expected column names", {
  expected_names <- c(
    "prefecture", "year", "population", "capital",
    "region", "estimated_area", "island"
  )
  expect_named(japan_population_tbl_df, expected_names)
})

test_that("Column types in japan_population_tbl_df are correct", {
  expect_type(japan_population_tbl_df$prefecture, "character")
  expect_type(japan_population_tbl_df$year, "double")
  expect_type(japan_population_tbl_df$population, "double")
  expect_type(japan_population_tbl_df$capital, "character")
  expect_type(japan_population_tbl_df$region, "character")
  expect_type(japan_population_tbl_df$estimated_area, "double")
  expect_type(japan_population_tbl_df$island, "character")
})
