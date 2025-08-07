# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


# kojima_tweets_tbl_df

library(testthat)

# Test 1: Confirm the object exists
test_that("kojima_tweets_tbl_df exists", {
  expect_true(exists("kojima_tweets_tbl_df"))
})

# Test 2: Confirm class is a tibble/data frame
test_that("kojima_tweets_tbl_df is a tibble", {
  expect_s3_class(kojima_tweets_tbl_df, "spec_tbl_df")
  expect_s3_class(kojima_tweets_tbl_df, "tbl_df")
  expect_s3_class(kojima_tweets_tbl_df, "tbl")
  expect_s3_class(kojima_tweets_tbl_df, "data.frame")
})

# Test 3: Confirm it has exactly 41 columns
test_that("kojima_tweets_tbl_df has 41 columns", {
  expect_equal(length(kojima_tweets_tbl_df), 41)
})

# Test 4: Confirm it has exactly 454 rows
test_that("kojima_tweets_tbl_df has 454 rows", {
  expect_equal(nrow(kojima_tweets_tbl_df), 454)
})

# Test 5: Confirm column names are correct
test_that("kojima_tweets_tbl_df has correct column names", {
  expect_named(kojima_tweets_tbl_df, c(
    "Tweet", "Created Date", "Retweets", "Favourites", "Engagement",
    "No of Hashtags", "No of User Mentions", "No of URLS added", "No of Media added",
    "Tweeted Username", "Replied To Username", "Post Type", "Media Type",
    "Is Quote Tweet", "Is Retweeted", "Language (Tweets)", "Country",
    "Location (Tweets)", "Location Full Name", "Location Type", "Hashtags",
    "User Mentions", "URLS Used", "Media URLS", "Name", "Username",
    "Created Date (Handles)", "Language (Handles)", "Tweets", "Followers",
    "Friends", "Favourites (Handles)", "Listed Count", "Location (Handles)",
    "Protected", "Verified", "URL", "Description", "Profile Image URL",
    "Account Age in Days", "Avg Tweets per day"
  ))
})

# Test 6: Confirm selected column types (spot check for diverse types)
test_that("kojima_tweets_tbl_df has correct data types (sample columns)", {
  expect_type(kojima_tweets_tbl_df[["Tweet"]], "character")
  expect_type(kojima_tweets_tbl_df[["Created Date"]], "character")
  expect_type(kojima_tweets_tbl_df[["Retweets"]], "double")
  expect_type(kojima_tweets_tbl_df[["Replied To Username"]], "logical")
  expect_type(kojima_tweets_tbl_df[["Is Quote Tweet"]], "character")
  expect_type(kojima_tweets_tbl_df[["Country"]], "logical")
  expect_type(kojima_tweets_tbl_df[["Tweets"]], "double")
  expect_type(kojima_tweets_tbl_df[["Username"]], "character")
  expect_type(kojima_tweets_tbl_df[["Protected"]], "character")
  expect_type(kojima_tweets_tbl_df[["Avg Tweets per day"]], "double")
})
