# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# japan_universities_tbl_df

library(testthat)

test_that("japan_universities_tbl_df has correct structure", {
  expect_true(exists("japan_universities_tbl_df"))
  expect_s3_class(japan_universities_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
  expect_equal(ncol(japan_universities_tbl_df), 22)
  expect_equal(nrow(japan_universities_tbl_df), 813)
})

test_that("japan_universities_tbl_df has expected column names", {
  expected_names <- c(
    "...1", "code", "name", "name_jp", "type", "type_jp", "address",
    "postal_code", "phone", "state", "state_jp", "latitude", "longitude",
    "found", "faculty_count", "department_count", "has_grad", "has_remote",
    "review_rating", "review_count", "difficulty_SD", "difficulty_rank"
  )
  expect_named(japan_universities_tbl_df, expected_names)
})

test_that("Column types in japan_universities_tbl_df are correct", {
  expect_type(japan_universities_tbl_df$`...1`, "double")
  expect_type(japan_universities_tbl_df$code, "character")
  expect_type(japan_universities_tbl_df$name, "character")
  expect_type(japan_universities_tbl_df$name_jp, "character")
  expect_type(japan_universities_tbl_df$type, "character")
  expect_type(japan_universities_tbl_df$type_jp, "character")
  expect_type(japan_universities_tbl_df$address, "character")
  expect_type(japan_universities_tbl_df$postal_code, "character")
  expect_type(japan_universities_tbl_df$phone, "character")
  expect_type(japan_universities_tbl_df$state, "character")
  expect_type(japan_universities_tbl_df$state_jp, "character")
  expect_type(japan_universities_tbl_df$latitude, "double")
  expect_type(japan_universities_tbl_df$longitude, "double")
  expect_type(japan_universities_tbl_df$found, "character")
  expect_type(japan_universities_tbl_df$faculty_count, "double")
  expect_type(japan_universities_tbl_df$department_count, "double")
  expect_type(japan_universities_tbl_df$has_grad, "logical")
  expect_type(japan_universities_tbl_df$has_remote, "logical")
  expect_type(japan_universities_tbl_df$review_rating, "double")
  expect_type(japan_universities_tbl_df$review_count, "double")
  expect_type(japan_universities_tbl_df$difficulty_SD, "double")
  expect_type(japan_universities_tbl_df$difficulty_rank, "character")
})
