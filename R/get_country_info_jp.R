# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' Get Key Country Information About Japan from the REST Countries API
#'
#' @description
#' Retrieves selected, essential information about Japan using the REST Countries API.
#' The function returns a tibble with core details such as population, area, capital, region,
#' and official language(s).
#'
#' See the API documentation at \url{https://restcountries.com/}.
#' Example API usage: \url{https://restcountries.com/v3.1/name/japan?fullText=true}.
#'
#' @return A tibble with the following 8 columns:
#' \itemize{
#'   \item \code{name_common}: Common name of the country.
#'   \item \code{name_official}: Official name of the country.
#'   \item \code{region}: Geographical region.
#'   \item \code{subregion}: Subregion within the continent.
#'   \item \code{capital}: Capital city.
#'   \item \code{area}: Area in square kilometers.
#'   \item \code{population}: Population of the country.
#'   \item \code{languages}: Languages spoken in the country, as a comma-separated string.
#' }
#'
#' @details
#' The function sends a GET request to the REST Countries API. If the API returns data for Japan,
#' the function extracts and returns selected fields as a tibble. If the request fails or
#' Japan is not found, it returns \code{NULL} and prints a message.
#'
#' @note Requires internet connection. The data is retrieved in real time from the REST Countries API.
#'
#' @source REST Countries API: \url{https://restcountries.com/}
#'
#' @examples
#' get_country_info_jp()
#'
#' @importFrom httr GET content http_error
#' @importFrom jsonlite fromJSON
#' @importFrom tibble tibble
#' @export
get_country_info_jp <- function() {
  url <- "https://restcountries.com/v3.1/name/japan?fullText=true"
  response <- httr::GET(url)
  if (httr::http_error(response)) {
    message("API request failed.")
    return(NULL)
  }
  data_raw <- httr::content(response, as = "text", encoding = "UTF-8")
  data_list <- jsonlite::fromJSON(data_raw)
  if (length(data_list) == 0) {
    message("No data found for Japan.")
    return(NULL)
  }
  data <- data_list[1, ]  # Only one country should be returned

  tibble::tibble(
    name_common   = data$name$common,
    name_official = data$name$official,
    region        = data$region,
    subregion     = data$subregion,
    capital       = paste(data$capital, collapse = ", "),
    area          = data$area,
    population    = data$population,
    languages     = paste(unlist(data$languages), collapse = ", ")
  )
}
