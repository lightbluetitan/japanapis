# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


#' Prefectural Informations in Japan
#'
#' This dataset, jpnprefs_tbl_df, is a tibble containing information about the 47 prefectures of Japan.
#' It includes details such as prefectural names in kanji and romaji, corresponding JIS codes,
#' the region each prefecture belongs to, and the major island associated with each.
#'
#' The dataset name has been kept as 'jpnprefs_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name jpnprefs_tbl_df
#' @format A tibble with 47 observations and 5 variables:
#' \describe{
#'   \item{jis_code}{JIS code of the prefecture (character)}
#'   \item{prefecture_kanji}{Prefectural name in kanji (character)}
#'   \item{prefecture}{Prefectural name in romaji (character)}
#'   \item{region}{Geographical region of the prefecture (character)}
#'   \item{major_island}{Major island the prefecture belongs to (character)}
#' }
#' @source Data taken from the zipangu package version 0.3.3
#' @usage data(jpnprefs_tbl_df)
#' @export
load("data/jpnprefs_tbl_df.rda")
NULL

#' Attributes of Some US and Japanese Automobiles
#'
#' This dataset, jpn_us_cars_df, is a data frame containing information on 45 automobiles
#' from the United States and Japan. It includes attributes such as model name, country
#' of origin, mileage, and price.
#'
#' The dataset name has been kept as 'jpn_us_cars_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name jpn_us_cars_df
#' @format A data frame with 45 observations and 4 variables:
#' \describe{
#'   \item{Model}{Car model (factor)}
#'   \item{Country}{Country of origin (factor)}
#'   \item{Mileage}{Mileage in miles per gallon (integer)}
#'   \item{Price}{Price in US dollars (integer)}
#' }
#' @source Data taken from the fma package version 2.5
#' @usage data(jpn_us_cars_df)
#' @export
load("data/jpn_us_cars_df.rda")
NULL


#' Japanese Motor Vehicle Production (1947–1989)
#'
#' This dataset, jpn_vehicle_prod_ts, is a univariate time series containing the number of motor vehicles
#' produced in Japan from 1947 to 1989. The figures are recorded annually and expressed in thousands.
#'
#' The dataset name has been kept as 'jpn_vehicle_prod_ts' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'ts' indicates that the dataset is a time series object. The original content has not been modified
#' in any way.
#'
#' @name jpn_vehicle_prod_ts
#' @format A univariate time series with 43 observations:
#' \describe{
#'   \item{Time}{Yearly observations from 1947 to 1989}
#'   \item{Values}{Motor vehicle production in Japan (in thousands)}
#' }
#' @source Data taken from the fma package version 2.5
#' @usage data(jpn_vehicle_prod_ts)
#' @export
load("data/jpn_vehicle_prod_ts.rda")
NULL


#' Yen-Dollar Exchange Rate (Weekly, 1975–1989)
#'
#' This dataset, jpn_usd_exchange_df, is a data frame containing weekly observations of
#' the yen-dollar exchange rate from 1975 to 1989. It includes spot and forward rates,
#' along with 30-day forward rates.
#'
#' The dataset name has been kept as 'jpn_usd_exchange_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name jpn_usd_exchange_df
#' @format A data frame with 778 observations and 4 variables:
#' \describe{
#'   \item{date}{Time index of the observation (integer)}
#'   \item{s}{Spot exchange rate (numeric)}
#'   \item{f}{Forward exchange rate (numeric)}
#'   \item{s30}{30-day forward exchange rate (numeric)}
#' }
#' @source Data taken from the Ecdat package version 0.4-2
#' @usage data(jpn_usd_exchange_df)
#' @export
load("data/jpn_usd_exchange_df.rda")
NULL


#' Japanese National Character Survey Sample
#'
#' This dataset, JNcharacter_df, is a data frame containing a subset of responses from
#' the Survey on the Japanese National Character. It includes demographic variables and
#' responses related to values, opinions, and attitudes.
#'
#' The dataset name has been kept as 'JNcharacter_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name JNcharacter_df
#' @format A data frame with 85 observations and 10 variables:
#' \describe{
#'   \item{sex}{Sex of the respondent (numeric)}
#'   \item{age}{Age of the respondent (numeric)}
#'   \item{pol.party}{Political party preference (numeric)}
#'   \item{education}{Level of education (numeric)}
#'   \item{occupation}{Occupation category (numeric)}
#'   \item{born.again}{Religious identification: born again or not (numeric)}
#'   \item{difficult}{Perception of life as difficult (numeric)}
#'   \item{pleasure}{Attitude toward pleasure (numeric)}
#'   \item{women.job}{Opinion on women working (numeric)}
#'   \item{money}{Importance of money (numeric)}
#' }
#' @source Data taken from the catdap package version 1.3.7
#' @usage data(JNcharacter_df)
#' @export
load("data/JNcharacter_df.rda")
NULL

#' Household Consumption and GDP in Japan (1978–2007)
#'
#' This dataset, jpn_gdp_cons_df, is a data frame containing information on Household Consumption (C)
#' and Gross Domestic Product (GDP, denoted as Y) in Japan from 1978 to 2007.
#' The data is useful for analyzing structural breaks under heteroskedasticity.
#'
#' The dataset name has been kept as 'jpn_gdp_cons_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name jpn_gdp_cons_df
#' @format A data frame with 30 observations and 3 variables:
#' \describe{
#'   \item{Year}{Calendar year (integer)}
#'   \item{C}{Household Consumption (integer)}
#'   \item{Y}{Gross Domestic Product (GDP) (integer)}
#' }
#' @source Data taken from the SupMZ package version 0.2.0
#' @usage data(jpn_gdp_cons_df)
#' @export
load("data/jpn_gdp_cons_df.rda")
NULL


#' July 26, 2003 N. Miyagi Earthquake Aftershocks
#'
#' This dataset, jpn_eq_miyagi_2003_df, is a data frame containing aftershock data from
#' the earthquake of magnitude 6.2 that occurred on 26th July 2003 in northern Miyagi-Ken, Japan.
#' It includes information on the time of occurrence, geographic coordinates, depth, and magnitude
#' of each aftershock event.
#'
#' The dataset name has been kept as 'jpn_eq_miyagi_2003_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name jpn_eq_miyagi_2003_df
#' @format A data frame with 2305 observations and 5 variables:
#' \describe{
#'   \item{time}{Time of aftershock event (numeric)}
#'   \item{longitude}{Longitude coordinate (numeric)}
#'   \item{latitude}{Latitude coordinate (numeric)}
#'   \item{depth}{Depth in kilometers (numeric)}
#'   \item{magnitude}{Magnitude of the aftershock (numeric)}
#' }
#' @source Data taken from the mmpp package version 0.6
#' @usage data(jpn_eq_miyagi_2003_df)
#' @export
load("data/jpn_eq_miyagi_2003_df.rda")
NULL


#' East Japan Railway's Tokaido Line Stations
#'
#' This dataset, tokaido_stations_tbl_df, is a tibble containing information about
#' stations on the Tokaido Line operated by East Japan Railway. It includes each station's
#' code and name.
#'
#' The dataset name has been kept as 'tokaido_stations_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name tokaido_stations_tbl_df
#' @format A tibble with 20 observations and 2 variables:
#' \describe{
#'   \item{st_code}{Station code (character)}
#'   \item{st_name}{Station name (character)}
#' }
#' @source Data taken from the ssrn package version 0.1.0
#' @usage data(tokaido_stations_tbl_df)
#' @export
load("data/tokaido_stations_tbl_df.rda")
NULL


#' Japan Prefectures 7x7 Grid Dataset
#'
#' This dataset, jpn_prefectures_tbl_df, is a tibble representing Japan’s 47 prefectures
#' arranged in a 7x7 grid layout. It includes prefectural codes, names in both romaji and kanji,
#' regions, major islands, and grid coordinates.
#'
#' The dataset name has been kept as 'jpn_prefectures_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name jpn_prefectures_tbl_df
#' @format A tibble with 47 observations and 8 variables:
#' \describe{
#'   \item{jis_code}{JIS code of the prefecture (character)}
#'   \item{prefecture}{Prefectural name in romaji (character)}
#'   \item{region}{Geographical region of the prefecture (factor)}
#'   \item{major_island}{Major island the prefecture belongs to (character)}
#'   \item{prefecture_kanji}{Prefectural name in kanji (character)}
#'   \item{region_kanji}{Region name in kanji (factor)}
#'   \item{x}{X coordinate for grid placement (integer)}
#'   \item{y}{Y coordinate for grid placement (integer)}
#' }
#' @source Data taken from the tabularmaps package version 0.1.0
#' @usage data(jpn_prefectures_tbl_df)
#' @export
load("data/jpn_prefectures_tbl_df.rda")
NULL



#' Special Wards of Tokyo
#'
#' This dataset, tokyo_wards_tbl_df, is a tibble containing information on the 23 special wards of Tokyo.
#' It includes ward numbers, names in both romaji and kanji, along with x and y coordinates for spatial layout.
#'
#' The dataset name has been kept as 'tokyo_wards_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name tokyo_wards_tbl_df
#' @format A tibble with 23 observations and 5 variables:
#' \describe{
#'   \item{no}{Ward number (character)}
#'   \item{ward}{Ward name in romaji (character)}
#'   \item{ward_kanji}{Ward name in kanji (character)}
#'   \item{x}{X coordinate for grid placement (numeric)}
#'   \item{y}{Y coordinate for grid placement (numeric)}
#' }
#' @source Data taken from the tabularmaps package version 0.1.0
#' @usage data(tokyo_wards_tbl_df)
#' @export
load("data/tokyo_wards_tbl_df.rda")
NULL


#' Tokyo Rainfall Data
#'
#' This dataset, tokyo_rainfall_vec, is a numeric vector containing Tokyo rainfall data
#' from Kitagawa (1987), analysed also by Rue and Held (2005) and Fahrmeir and Tutz (2013).
#' It includes daily rainfall measurements over a period of 366 days.
#'
#' The dataset name has been kept as 'tokyo_rainfall_vec' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'vec' indicates that the dataset is a vector object. The original content has not been modified
#' in any way.
#'
#' @name tokyo_rainfall_vec
#' @format A numeric vector with 366 observations:
#' \describe{
#'   Daily rainfall measurements (numeric values ranging from 0 to 2)
#' }
#' @source Data taken from the gamlss.data package version 6.0-6
#' @usage data(tokyo_rainfall_vec)
#' @export
load("data/tokyo_rainfall_vec.rda")
NULL

#' Hiroshima Atomic Bomb Survivors Cancer Data
#'
#' This dataset, hiroshima_tbl_df, is a tibble containing data on the number of deaths
#' from leukemia and other cancers among survivors of the Hiroshima atom bomb.
#' The data cover deaths that occurred during the period 1950–1959 among survivors
#' who were aged 25 to 64 years in 1950.
#'
#' The dataset name has been kept as 'hiroshima_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name hiroshima_tbl_df
#' @format A tibble with 6 observations and 4 variables:
#' \describe{
#'   \item{radiation}{Radiation exposure category (character)}
#'   \item{leukemia}{Number of deaths from leukemia (numeric)}
#'   \item{other cancer}{Number of deaths from other cancers (numeric)}
#'   \item{total cancers}{Total number of cancer deaths (numeric)}
#' }
#' @source Data taken from the dobson package version 0.4
#' @usage data(hiroshima_tbl_df)
#' @export
load("data/hiroshima_tbl_df.rda")
NULL


#' Half-Caste Manga Characters
#'
#' This dataset, jpn_manga_hafu_df, is a data frame containing information on half-caste
#' manga characters. It includes attributes such as the year of publication, manga series,
#' character name, gender, parental origin, and physical traits like eye and hair color.
#'
#' The dataset name has been kept as 'jpn_manga_hafu_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name jpn_manga_hafu_df
#' @format A data frame with 296 observations and 9 variables:
#' \describe{
#'   \item{Year}{Year of publication (integer)}
#'   \item{Series}{Manga series name (factor)}
#'   \item{Character}{Character name (factor)}
#'   \item{Gender}{Gender of the character (factor)}
#'   \item{Father}{Father's origin (factor)}
#'   \item{Mother}{Mother's origin (factor)}
#'   \item{Eyes}{Eye color (factor)}
#'   \item{Hair}{Hair color (factor)}
#'   \item{Notes}{Additional notes about the character (factor)}
#' }
#' @source Data taken from the learningr package version 0.29.1
#' @usage data(jpn_manga_hafu_df)
#' @export
load("data/jpn_manga_hafu_df.rda")
NULL


#' Taste Ratings of Japanese Rice Wine (Sake)
#'
#' This dataset, sake_ratings_df, is a data frame containing data from a study of
#' Japanese rice wine (sake), used to investigate the relationship between two subjective
#' ratings (taste and smell) and a number of physical measurements on 30 brands of sake.
#'
#' The dataset name has been kept as 'sake_ratings_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name sake_ratings_df
#' @format A data frame with 30 observations and 10 variables:
#' \describe{
#'   \item{taste}{Subjective taste rating (numeric)}
#'   \item{smell}{Subjective smell rating (numeric)}
#'   \item{pH}{pH level (numeric)}
#'   \item{acidity1}{Acidity measure 1 (numeric)}
#'   \item{acidity2}{Acidity measure 2 (numeric)}
#'   \item{sake}{Sake meter value (numeric)}
#'   \item{rsugar}{Reducing sugar content (numeric)}
#'   \item{tsugar}{Total sugar content (numeric)}
#'   \item{alcohol}{Alcohol content (numeric)}
#'   \item{nitrogen}{Nitrogen content (numeric)}
#' }
#' @source Data taken from the heplots package version 1.7.0
#' @usage data(sake_ratings_df)
#' @export
load("data/sake_ratings_df.rda")
NULL



#' The Seishu Wine Study
#'
#' This dataset, seishu_wine_df, is a data frame containing data from a study on wine.
#' The study records the odor and taste of wines, with the aim of explaining these characteristics
#' through various chemical properties such as pH concentration, alcohol content, total sugar, and others.
#'
#' The dataset name has been kept as 'seishu_wine_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name seishu_wine_df
#' @format A data frame with 30 observations and 10 variables:
#' \describe{
#'   \item{Taste}{Taste rating of the wine (numeric)}
#'   \item{Odor}{Odor rating of the wine (numeric)}
#'   \item{pH}{pH concentration (numeric)}
#'   \item{Acidity_1}{First acidity measurement (numeric)}
#'   \item{Acidity_2}{Second acidity measurement (numeric)}
#'   \item{Sake_meter}{Sake meter value (numeric)}
#'   \item{Direct_reducing_sugar}{Direct reducing sugar content (numeric)}
#'   \item{Total_sugar}{Total sugar content (numeric)}
#'   \item{Alcohol}{Alcohol content (numeric)}
#'   \item{Formyl_nitrogen}{Formyl nitrogen content (numeric)}
#' }
#' @source Data taken from the ACSWR package version 1.0
#' @usage data(seishu_wine_df)
#' @export
load("data/seishu_wine_df.rda")
NULL


#' 1995 Kobe Earthquake Data
#'
#' This dataset, `kobe_quake_1995_ts`, is a time series containing data related to
#' the 1995 Kobe earthquake. The data are organized sequentially with a frequency of 1,
#' and consist of 3,048 observations.
#'
#' The dataset name has been kept as 'kobe_quake_1995_ts' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'ts' indicates that the dataset is a time series object. The original content has not been modified
#' in any way.
#'
#' @name kobe_quake_1995_ts
#' @format A time series with 3,048 observations:
#' \describe{
#'   \item{observations}{Time series data related to the 1995 Kobe earthquake (numeric)}
#' }
#' @source Data taken from the waveslim package version 1.8.5
#' @usage data(kobe_quake_1995_ts)
#' @export
load("data/kobe_quake_1995_ts.rda")
NULL



#' Climate Data in Japan
#'
#' This dataset, jpn_climate_tbl_df, is a tibble containing climate data from various observation stations
#' across Japan. It includes monthly data on temperature, precipitation, snowfall, solar insolation,
#' and metadata such as station name, location, altitude, and coordinates.
#'
#' The dataset name has been kept as 'jpn_climate_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name jpn_climate_tbl_df
#' @format A tibble with 3,768 observations and 14 variables:
#' \describe{
#'   \item{no}{Observation number (numeric)}
#'   \item{station}{Name of the weather station (character)}
#'   \item{month}{Month of observation (numeric)}
#'   \item{temperature}{Average temperature (numeric)}
#'   \item{precipitation}{Monthly precipitation (numeric)}
#'   \item{snowfall}{Monthly snowfall (numeric)}
#'   \item{insolation}{Monthly solar insolation (numeric)}
#'   \item{country}{Country name (character)}
#'   \item{period}{Measurement period or time range (character)}
#'   \item{altitude}{Altitude of the station (numeric)}
#'   \item{latitude}{Latitude coordinate (numeric)}
#'   \item{longitude}{Longitude coordinate (numeric)}
#'   \item{NS}{Latitude direction, North or South (character)}
#'   \item{WE}{Longitude direction, West or East (character)}
#' }
#' @source Data taken from the clidatajp package version 0.5.2
#' @usage data(jpn_climate_tbl_df)
#' @export
load("data/jpn_climate_tbl_df.rda")
NULL



#' Climate Stations in Japan
#'
#' This dataset, jpn_climate_stations_tbl_df, is a tibble containing information about 157 climate observation stations
#' located across various regions and prefectures in Japan. It includes details such as station name, location,
#' altitude, coordinates, and city information.
#'
#' The dataset name has been kept as 'jpn_climate_stations_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name jpn_climate_stations_tbl_df
#' @format A tibble with 157 observations and 11 variables:
#' \describe{
#'   \item{region}{Geographical region where the station is located (character)}
#'   \item{pref}{Prefecture name (character)}
#'   \item{no}{Station number (character)}
#'   \item{station}{Station name (character)}
#'   \item{altitude}{Altitude of the station (character)}
#'   \item{latitude}{Latitude coordinate (character)}
#'   \item{longitude}{Longitude coordinate (character)}
#'   \item{NS}{Latitude direction, North or South (character)}
#'   \item{WE}{Longitude direction, West or East (character)}
#'   \item{yomi}{Station name in Japanese phonetic script (character)}
#'   \item{city}{City name (character)}
#' }
#' @source Data taken from the clidatajp package version 0.5.2
#' @usage data(jpn_climate_stations_tbl_df)
#' @export
load("data/jpn_climate_stations_tbl_df.rda")
NULL




#' Japanese NIKKEI Stock Index
#'
#' This dataset, nikkei_stock_index_df, is a data frame containing the daily log returns in percent
#' of the NIKKEI stock index for the period from 1984-01-04 to 2000-12-22.
#'
#' The dataset name has been kept as 'nikkei_stock_index_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name nikkei_stock_index_df
#' @format A data frame with 4,246 observations and 2 variables:
#' \describe{
#'   \item{index}{Date or index label (character)}
#'   \item{value}{Daily log return in percent (numeric)}
#' }
#' @source Data taken from the tsgarch package version 1.0.3
#' @usage data(nikkei_stock_index_df)
#' @export
load("data/nikkei_stock_index_df.rda")
NULL



#' Japanese Atomic Bomb Survivors
#'
#' This dataset, atomic_bomb_survivors_df, is a data frame containing frequencies of cancer deaths
#' among Japanese atomic bomb survivors, categorized by extent of exposure, years after exposure, and age group.
#' The dataset was used in the journal Statistical Sleuth and analyzed by Gore et al. (2006).
#'
#' The dataset name has been kept as 'atomic_bomb_survivors_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name atomic_bomb_survivors_df
#' @format A data frame with 84 observations and 4 variables:
#' \describe{
#'   \item{Radians}{Radiation exposure level (integer)}
#'   \item{Count.Type}{Type of count (factor)}
#'   \item{Count.Age.Group}{Age group at time of observation (factor)}
#'   \item{Frequency}{Frequency of cancer deaths (integer)}
#' }
#' @source Data taken from the ACSWR package version 1.0
#' @usage data(atomic_bomb_survivors_df)
#' @export
load("data/atomic_bomb_survivors_df.rda")
NULL


#' Toyota Stock Prices
#'
#' This dataset, toyota_stock_prices_df, is a data frame containing the average monthly stock prices
#' of Toyota from 1982 to 1998.
#'
#' The dataset name has been kept as 'toyota_stock_prices_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name toyota_stock_prices_df
#' @format A data frame with 255 observations and 2 variables:
#' \describe{
#'   \item{Month}{Month number from the beginning of the time series (integer)}
#'   \item{Value}{Average monthly stock price (numeric)}
#' }
#' @source Data taken from the MMAC package version 0.1.2
#' @usage data(toyota_stock_prices_df)
#' @export
load("data/toyota_stock_prices_df.rda")
NULL


#' Japanese Centenarians Data
#'
#' This dataset, centenarian_df, is a data frame containing the number of deaths at each year
#' from 1963 to 1980 for Japanese male centenarians. The data is based on Table 2 of Emura and Murotani (2015),
#' and also references the original work of Sibuya & Hanayama (2004).
#'
#' The dataset name has been kept as 'centenarian_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name centenarian_df
#' @format A data frame with 21 observations and 19 variables:
#' \describe{
#'   \item{X}{Age or identifier (numeric)}
#'   \item{X1963}{Number of deaths in 1963 (integer)}
#'   \item{X1964}{Number of deaths in 1964 (integer)}
#'   \item{X1965}{Number of deaths in 1965 (integer)}
#'   \item{X1966}{Number of deaths in 1966 (integer)}
#'   \item{X1967}{Number of deaths in 1967 (integer)}
#'   \item{X1968}{Number of deaths in 1968 (integer)}
#'   \item{X1969}{Number of deaths in 1969 (integer)}
#'   \item{X1970}{Number of deaths in 1970 (integer)}
#'   \item{X1971}{Number of deaths in 1971 (integer)}
#'   \item{X1972}{Number of deaths in 1972 (integer)}
#'   \item{X1973}{Number of deaths in 1973 (integer)}
#'   \item{X1974}{Number of deaths in 1974 (integer)}
#'   \item{X1975}{Number of deaths in 1975 (integer)}
#'   \item{X1976}{Number of deaths in 1976 (integer)}
#'   \item{X1977}{Number of deaths in 1977 (integer)}
#'   \item{X1978}{Number of deaths in 1978 (integer)}
#'   \item{X1979}{Number of deaths in 1979 (integer)}
#'   \item{X1980}{Number of deaths in 1980 (integer)}
#' }
#' @source Data taken from the depend.truncation package version 3.0
#' @usage data(centenarian_df)
#' @export
load("data/centenarian_df.rda")
NULL

#' Earthquake Observation Stations in Japan
#'
#' This dataset, earthquake_station_sf, is a spatial features (sf) tibble containing information about
#' 671 earthquake observation stations managed by the Japan Meteorological Agency.
#' It includes details such as the prefecture, area, station name, address, and observation period.
#'
#' The dataset name has been kept as 'earthquake_station_sf' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' JapanAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'sf' indicates that the dataset is a spatial features object. The original content has not been modified
#' in any way.
#'
#' @name earthquake_station_sf
#' @format An sf object with 671 observations and 7 variables:
#' \describe{
#'   \item{prefecture}{Name of the prefecture (character)}
#'   \item{area}{Area within the prefecture (character)}
#'   \item{station_name}{Name of the observation station (character)}
#'   \item{address}{Physical address of the station (character)}
#'   \item{observation_begin}{Start date of observation (character)}
#'   \item{observation_end}{End date of observation, if available (character)}
#'   \item{geometry}{XY coordinates of the station (sf geometry column)}
#' }
#' @source Data taken from the jmastats package version 0.3.0
#' @usage data(earthquake_station_sf)
#' @export
load("data/earthquake_station_sf.rda")
NULL


#' Shinkansen Stations in Japan
#'
#' This dataset, shinkansen_stations_tbl_df, is a tibble containing information about 113 Shinkansen train stations across Japan.
#' Each row represents a station and includes its name, the Shinkansen line it belongs to, the year it opened, the prefecture it is located in,
#' the distance from Tokyo Station in kilometers, and the operating company.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'shinkansen_stations_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name shinkansen_stations_tbl_df
#' @format A tibble with 113 observations and 6 variables:
#' \describe{
#'   \item{Station_Name}{Name of the Shinkansen station (character)}
#'   \item{Shinkansen_Line}{Name of the Shinkansen line (character)}
#'   \item{Year}{Year the station opened (numeric)}
#'   \item{Prefecture}{Prefecture in which the station is located (character)}
#'   \item{Distance from Tokyo st}{Distance from Tokyo Station in kilometers (numeric)}
#'   \item{Company}{Operating company of the station (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/japandata509/shinkansen-stations-in-japan}
#' @usage data(shinkansen_stations_tbl_df)
#' @export
load("data/shinkansen_stations_tbl_df.rda")
NULL



#' Japan Birth Demographics
#'
#' This dataset, japan_birth_stats_tbl_df, is a tibble containing Japan’s birth-related demographic statistics
#' from 1899 to 2022. The dataset includes birth counts by gender, birth rate, fertility rate, infant deaths,
#' stillbirths, birth order, gestational weeks, average parental ages, and legitimacy of births.
#' Some data are missing between the years 1944 and 1946 due to records lost during World War II.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'japan_birth_stats_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name japan_birth_stats_tbl_df
#' @format A tibble with 124 observations and 51 variables:
#' \describe{
#'   \item{...1}{Index column (numeric)}
#'   \item{year}{Year of observation (numeric)}
#'   \item{birth_total}{Total number of births (numeric)}
#'   \item{birth_male}{Number of male births (numeric)}
#'   \item{birth_female}{Number of female births (numeric)}
#'   \item{birth_rate}{Birth rate per 1,000 population (numeric)}
#'   \item{birth_gender_ratio}{Male to female birth ratio (numeric)}
#'   \item{total_fertility_rate}{Total fertility rate (numeric)}
#'   \item{population_total}{Total population (numeric)}
#'   \item{population_male}{Male population (numeric)}
#'   \item{population_female}{Female population (numeric)}
#'   \item{infant_death_total}{Total number of infant deaths (numeric)}
#'   \item{infant_death_male}{Number of male infant deaths (numeric)}
#'   \item{infant_death_female}{Number of female infant deaths (numeric)}
#'   \item{infant_death_unknown_gender}{Infant deaths with unknown gender (numeric)}
#'   \item{infant_death_rate}{Infant mortality rate (numeric)}
#'   \item{infant_death_gender_ratio}{Male to female infant death ratio (numeric)}
#'   \item{infant_deaths_in_total_deaths}{Proportion of infant deaths in total deaths (numeric)}
#'   \item{stillbirth_total}{Total number of stillbirths (numeric)}
#'   \item{stillbirth_male}{Number of male stillbirths (numeric)}
#'   \item{stillbirth_female}{Number of female stillbirths (numeric)}
#'   \item{stillbirth_unknown_gender}{Stillbirths with unknown gender (numeric)}
#'   \item{stillbirth_rate}{Stillbirth rate (numeric)}
#'   \item{stillbirth_gender_ratio}{Male to female stillbirth ratio (numeric)}
#'   \item{firstborn}{Number of firstborn children (numeric)}
#'   \item{secondborn}{Number of secondborn children (numeric)}
#'   \item{thirdborn}{Number of thirdborn children (numeric)}
#'   \item{forthborn}{Number of fourthborn children (numeric)}
#'   \item{fifthborn_and_above}{Number of fifthborn and above children (numeric)}
#'   \item{weeks_under_28}{Births before 28 gestational weeks (numeric)}
#'   \item{weeks_28-31}{Births between 28 and 31 gestational weeks (numeric)}
#'   \item{weeks_32-36}{Births between 32 and 36 gestational weeks (numeric)}
#'   \item{weeks_37-41}{Births between 37 and 41 gestational weeks (numeric)}
#'   \item{weeks_over_42}{Births after 42 gestational weeks (numeric)}
#'   \item{mother_age_avg}{Average age of mothers (numeric)}
#'   \item{mother_age_firstborn}{Average age of mothers for firstborns (numeric)}
#'   \item{mother_age_secondborn}{Average age of mothers for secondborns (numeric)}
#'   \item{mother_age_thirdborn}{Average age of mothers for thirdborns (numeric)}
#'   \item{mother_age_under_19}{Births to mothers under 19 years (numeric)}
#'   \item{mother_age_20-24}{Births to mothers aged 20–24 (numeric)}
#'   \item{mother_age_25-29}{Births to mothers aged 25–29 (numeric)}
#'   \item{mother_age_30-34}{Births to mothers aged 30–34 (numeric)}
#'   \item{mother_age_35-39}{Births to mothers aged 35–39 (numeric)}
#'   \item{mother_age_40-44}{Births to mothers aged 40–44 (numeric)}
#'   \item{mother_age_over_45}{Births to mothers over 45 years (numeric)}
#'   \item{father_age_avg}{Average age of fathers (numeric)}
#'   \item{father_age_firstborn}{Average age of fathers for firstborns (numeric)}
#'   \item{father_age_secondborn}{Average age of fathers for secondborns (numeric)}
#'   \item{father_age_thirdborn}{Average age of fathers for thirdborns (numeric)}
#'   \item{legitimate_child}{Number of legitimate children (numeric)}
#'   \item{illegitimate_child}{Number of illegitimate children (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/webdevbadger/japan-birth-statistics}
#' @usage data(japan_birth_stats_tbl_df)
#' @export
load("data/japan_birth_stats_tbl_df.rda")
NULL


#' Japanese Universities
#'
#' This dataset, japan_universities_tbl_df, is a tibble containing comprehensive data about 813 universities in Japan.
#' It includes information such as the university name (in English and Japanese), location, type, year founded, number of faculties
#' and departments, availability of graduate and remote programs, and difficulty and review metrics.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'japan_universities_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name japan_universities_tbl_df
#' @format A tibble with 813 observations and 22 variables:
#' \describe{
#'   \item{...1}{Index column (numeric)}
#'   \item{code}{University code (character)}
#'   \item{name}{University name in English (character)}
#'   \item{name_jp}{University name in Japanese (character)}
#'   \item{type}{Type of university (e.g., Public, Private) (character)}
#'   \item{type_jp}{Type of university in Japanese (character)}
#'   \item{address}{Full address of the university (character)}
#'   \item{postal_code}{Postal code (character)}
#'   \item{phone}{Contact phone number (character)}
#'   \item{state}{Name of the prefecture or region in English (character)}
#'   \item{state_jp}{Name of the prefecture or region in Japanese (character)}
#'   \item{latitude}{Latitude coordinate (numeric)}
#'   \item{longitude}{Longitude coordinate (numeric)}
#'   \item{found}{Year the university was founded (character)}
#'   \item{faculty_count}{Number of faculties (numeric)}
#'   \item{department_count}{Number of departments (numeric)}
#'   \item{has_grad}{Whether the university has graduate programs (logical)}
#'   \item{has_remote}{Whether the university offers remote programs (logical)}
#'   \item{review_rating}{Average user review rating (numeric)}
#'   \item{review_count}{Number of user reviews (numeric)}
#'   \item{difficulty_SD}{Standard deviation of difficulty ratings (numeric)}
#'   \item{difficulty_rank}{Relative difficulty rank (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/webdevbadger/japanese-universities}
#' @usage data(japan_universities_tbl_df)
#' @export
load("data/japan_universities_tbl_df.rda")
NULL


#' Japan Population Data
#'
#' This dataset, japan_population_tbl_df, is a tibble containing Japan’s population over time and space.
#' In this dataset you will find the raw population numbers for the prefectures, going as far back as the 1870s.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'japan_population_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name japan_population_tbl_df
#' @format A tibble with 2,632 observations and 7 variables:
#' \describe{
#'   \item{prefecture}{Name of the prefecture (character)}
#'   \item{year}{Year of the population observation (numeric)}
#'   \item{population}{Total population in that year (numeric)}
#'   \item{capital}{Name of the prefectural capital (character)}
#'   \item{region}{Geographic region of the prefecture (character)}
#'   \item{estimated_area}{Estimated area of the prefecture in square kilometers (numeric)}
#'   \item{island}{Name of the island to which the prefecture belongs (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/jd1325/japan-population-data}
#' @usage data(japan_population_tbl_df)
#' @export
load("data/japan_population_tbl_df.rda")
NULL



#' Japanese Whisky Review Dataset
#'
#' This dataset, japanese_whisky_tbl_df, is a tibble containing over 1,000 reviews of Japanese whisky.
#' The dataset includes the bottle name, brand, review title, and full review content.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'japanese_whisky_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name japanese_whisky_tbl_df
#' @format A tibble with 1,130 observations and 5 variables:
#' \describe{
#'   \item{...1}{Index column (numeric)}
#'   \item{Bottle_name}{Name of the whisky bottle (character)}
#'   \item{Brand}{Brand of the whisky (character)}
#'   \item{Title}{Title of the review (character)}
#'   \item{Review_Content}{Full text content of the review (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/koki25ando/japanese-whisky-review}
#' @usage data(japanese_whisky_tbl_df)
#' @export
load("data/japanese_whisky_tbl_df.rda")
NULL



#' Japanese J1 League Results
#'
#' This dataset, J1League_tbl_df, is a tibble containing results of Japan's J1 League matches from 2012 to 2022.
#' The dataset includes information such as the season, match date and time, home and away teams, goals scored,
#' and final match result. The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'J1League_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name J1League_tbl_df
#' @format A tibble with 3,213 observations and 7 variables:
#' \describe{
#'   \item{Season}{Season year of the match (numeric)}
#'   \item{DateTime}{Date and time of the match (POSIXct)}
#'   \item{Home}{Home team name (character)}
#'   \item{Away}{Away team name (character)}
#'   \item{HG}{Number of goals scored by the home team (numeric)}
#'   \item{AG}{Number of goals scored by the away team (numeric)}
#'   \item{Res}{Final result of the match (character)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/irkaal/japanese-j1-league}
#' @usage data(J1League_tbl_df)
#' @export
load("data/J1League_tbl_df.rda")
NULL




#' Suicides in Japan by Sex and Age (1978–2022)
#'
#' This dataset, jpn_suicides_tbl_df, is a tibble containing the number of suicides in Japan
#' from 1978 to 2022 by sex and age group. The dataset includes suicide counts for males and females,
#' overall suicide rates, and counts by specific age ranges. The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'jpn_suicides_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name jpn_suicides_tbl_df
#' @format A tibble with 45 observations and 14 variables:
#' \describe{
#'   \item{year}{Year of observation (numeric)}
#'   \item{num_suicide_male}{Number of male suicides (numeric)}
#'   \item{num_suicide_female}{Number of female suicides (numeric)}
#'   \item{suicide_rate}{Overall suicide rate (numeric)}
#'   \item{suicide_rate_male}{Suicide rate among males (numeric)}
#'   \item{suicide_rate_female}{Suicide rate among females (numeric)}
#'   \item{num_suicide_age_0_19}{Number of suicides aged 0–19 (numeric)}
#'   \item{num_suicide_age_20_29}{Number of suicides aged 20–29 (numeric)}
#'   \item{num_suicide_age_30_39}{Number of suicides aged 30–39 (numeric)}
#'   \item{num_suicide_age_40_49}{Number of suicides aged 40–49 (numeric)}
#'   \item{num_suicide_age_50_59}{Number of suicides aged 50–59 (numeric)}
#'   \item{num_suicide_60_plus}{Number of suicides aged 60 and above (numeric)}
#'   \item{num_suicide_age_unknown}{Number of suicides with unknown age (numeric)}
#'   \item{num_suicide_total}{Total number of suicides (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/krisztinboros/suicides-in-japan-by-sex-and-age-19782021}
#' @usage data(jpn_suicides_tbl_df)
#' @export
load("data/jpn_suicides_tbl_df.rda")
NULL




#' Kojima Hideo Tweets (Japanese)
#'
#' This dataset, kojima_tweets_tbl_df, is a tibble containing 454 original tweets from Hideo Kojima,
#' posted between November 17, 2019, and January 6, 2020. Retweets are excluded.
#' The dataset includes tweet text, engagement metrics, tweet metadata, user handle information,
#' geolocation data, hashtags, mentions, URLs, and media details. The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'kojima_tweets_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name kojima_tweets_tbl_df
#' @format A tibble with 454 observations and 41 variables:
#' \describe{
#'   \item{Tweet}{Text content of the tweet (character)}
#'   \item{Created Date}{Date when the tweet was created (character)}
#'   \item{Retweets}{Number of retweets (numeric)}
#'   \item{Favourites}{Number of likes (numeric)}
#'   \item{Engagement}{Sum of retweets and likes (numeric)}
#'   \item{No of Hashtags}{Count of hashtags used (numeric)}
#'   \item{No of User Mentions}{Count of user mentions (numeric)}
#'   \item{No of URLS added}{Count of URLs included (numeric)}
#'   \item{No of Media added}{Count of media elements attached (numeric)}
#'   \item{Tweeted Username}{Username who posted the tweet (character)}
#'   \item{Replied To Username}{Whether it was a reply to another user (logical)}
#'   \item{Post Type}{Type of post (e.g., tweet, reply, etc.) (character)}
#'   \item{Media Type}{Type of media included (e.g., photo, video) (character)}
#'   \item{Is Quote Tweet}{Whether the tweet is a quote (character)}
#'   \item{Is Retweeted}{Whether the tweet is a retweet (character)}
#'   \item{Language (Tweets)}{Language of the tweet content (character)}
#'   \item{Country}{Country information if available (logical)}
#'   \item{Location (Tweets)}{Geolocation as specified in the tweet (logical)}
#'   \item{Location Full Name}{Full name of the location (logical)}
#'   \item{Location Type}{Type of location (logical)}
#'   \item{Hashtags}{Hashtags used in the tweet (character)}
#'   \item{User Mentions}{User mentions in the tweet (character)}
#'   \item{URLS Used}{URLs present in the tweet (character)}
#'   \item{Media URLS}{Media URLs attached to the tweet (character)}
#'   \item{Name}{Name associated with the Twitter account (character)}
#'   \item{Username}{Handle of the Twitter account (character)}
#'   \item{Created Date (Handles)}{Date when the Twitter account was created (character)}
#'   \item{Language (Handles)}{Preferred language of the account (character)}
#'   \item{Tweets}{Total number of tweets from the account (numeric)}
#'   \item{Followers}{Number of followers (numeric)}
#'   \item{Friends}{Number of accounts followed (numeric)}
#'   \item{Favourites (Handles)}{Total number of liked tweets by the account (numeric)}
#'   \item{Listed Count}{Number of lists the account is included in (numeric)}
#'   \item{Location (Handles)}{Location listed in the user profile (character)}
#'   \item{Protected}{Whether the account is protected (character)}
#'   \item{Verified}{Whether the account is verified (character)}
#'   \item{URL}{URL included in the profile (character)}
#'   \item{Description}{Profile description or bio (character)}
#'   \item{Profile Image URL}{URL of the profile image (character)}
#'   \item{Account Age in Days}{Age of the account in days (numeric)}
#'   \item{Avg Tweets per day}{Average tweets per day (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/luciesteel/kojima-tweets}
#' @usage data(kojima_tweets_tbl_df)
#' @export
load("data/kojima_tweets_tbl_df.rda")
NULL


#' Japan Life Expectancy and Socioeconomic Indicators (2020)
#'
#' This dataset, life_exp_japan_tbl_df, is a tibble containing life expectancy and related
#' economic and social indicators for Japan's 47 prefectures as of 2020. It includes variables
#' on healthcare infrastructure, education levels, income, public spending, and environmental indicators.
#' The dataset preserves the original structure from its source on Kaggle.
#'
#' The dataset name has been kept as 'life_exp_japan_tbl_df' to maintain consistency with the naming conventions
#' in the JapanAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name life_exp_japan_tbl_df
#' @format A tibble with 47 observations and 23 variables:
#' \describe{
#'   \item{Prefecture}{Name of the Japanese prefecture (character)}
#'   \item{Life_expectancy}{Average life expectancy (numeric)}
#'   \item{Physician}{Number of physicians per 100,000 people (numeric)}
#'   \item{Junior_col}{Number of junior colleges (numeric)}
#'   \item{University}{Number of universities (numeric)}
#'   \item{Public_Hosp}{Number of public hospitals (numeric)}
#'   \item{Pshic_hosp}{Number of psychiatric hospitals (numeric)}
#'   \item{Beds_psic}{Number of psychiatric hospital beds (numeric)}
#'   \item{Nurses}{Number of nurses per 100,000 people (numeric)}
#'   \item{Avg_hours}{Average weekly working hours (numeric)}
#'   \item{Salary}{Average annual salary (numeric)}
#'   \item{Elementary_school}{Number of elementary schools (numeric)}
#'   \item{Sport_fac}{Number of sports facilities (numeric)}
#'   \item{Park}{Number of parks (numeric)}
#'   \item{Forest}{Percentage of forest area (numeric)}
#'   \item{Income_per capita}{Per capita income (numeric)}
#'   \item{Density_pop}{Population density (people per km²) (numeric)}
#'   \item{Hospitals}{Total number of hospitals (numeric)}
#'   \item{Beds}{Total number of hospital beds (numeric)}
#'   \item{Ambulances}{Number of ambulances (numeric)}
#'   \item{Health_exp}{Health expenditure per capita (numeric)}
#'   \item{Educ_exp}{Education expenditure per capita (numeric)}
#'   \item{Welfare_exp}{Welfare expenditure per capita (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/gianinamariapetrascu/japan-life-expectancy}
#' @usage data(life_exp_japan_tbl_df)
#' @export
load("data/life_exp_japan_tbl_df.rda")
NULL








