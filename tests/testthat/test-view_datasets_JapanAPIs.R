# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# view_datasets_JapanAPIs

library(testthat)
library(JapanAPIs)

test_that("view_datasets_JapanAPIs works when package is loaded", {
  result <- view_datasets_JapanAPIs()
  expect_type(result, "character")
  expect_true(length(result) > 0)
})

test_that("view_datasets_JapanAPIs prints correct message", {
  output <- capture_messages(view_datasets_JapanAPIs())
  expect_match(
    output[1],
    "Datasets available in the 'JapanAPIs' package:",
    fixed = TRUE
  )
})

test_that("view_datasets_JapanAPIs returns expected datasets", {
  datasets <- view_datasets_JapanAPIs()
  expected_datasets <- c(
    "atomic_bomb_survivors_df",
    "centenarian_df",
    "earthquake_station_sf",
    "hiroshima_tbl_df",
    "J1League_tbl_df",
    "japan_birth_stats_tbl_df",
    "japan_population_tbl_df",
    "japan_universities_tbl_df",
    "japanese_whisky_tbl_df",
    "JNcharacter_df",
    "jpn_climate_stations_tbl_df",
    "jpn_climate_tbl_df",
    "jpn_eq_miyagi_2003_df",
    "jpn_gdp_cons_df",
    "jpn_manga_hafu_df",
    "jpn_prefectures_tbl_df",
    "jpn_suicides_tbl_df",
    "jpn_us_cars_df",
    "jpn_usd_exchange_df",
    "jpn_vehicle_prod_ts",
    "jpnprefs_tbl_df",
    "kobe_quake_1995_ts",
    "kojima_tweets_tbl_df",
    "life_exp_japan_tbl_df",
    "sake_ratings_df",
    "seishu_wine_df",
    "shinkansen_stations_tbl_df",
    "tokaido_stations_tbl_df",
    "tokyo_rainfall_vec",
    "tokyo_wards_tbl_df",
    "toyota_stock_prices_df"



  )
  # Check if all expected datasets are present
  missing_datasets <- setdiff(expected_datasets, datasets)
  expect_true(
    length(missing_datasets) == 0,
    info = paste("Missing datasets:", paste(missing_datasets, collapse = ", "))
  )
})

