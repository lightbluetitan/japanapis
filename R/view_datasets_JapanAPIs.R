# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' View Available Datasets in JapanAPIs
#'
#' This function lists all datasets available in the 'JapanAPIs' package.
#' If the 'JapanAPIs' package is not loaded, it stops and shows an error message.
#' If no datasets are available, it returns a message and an empty vector.
#'
#' @return A character vector with the names of the available datasets.
#'         If no datasets are found, it returns an empty character vector.
#' @examples
#' if (requireNamespace("JapanAPIs", quietly = TRUE)) {
#'   library(JapanAPIs)
#'   view_datasets_JapanAPIs()
#' }
#' @export
view_datasets_JapanAPIs <- function() {
  # Check if the package is loaded
  if (!"JapanAPIs" %in% .packages()) {
    stop("The 'JapanAPIs' package must be loaded to view its datasets.")
  }

  # Extract dataset information
  datasets_info <- utils::data(package = "JapanAPIs")$results

  # Check if there are datasets available
  if (nrow(datasets_info) == 0) {
    message("No datasets are currently available in the 'JapanAPIs' package.")
    return(character(0))
  }

  # Extract dataset names
  datasets <- datasets_info[, "Item"]

  # Display the message with available datasets
  message("Datasets available in the 'JapanAPIs' package:")

  # Return a vector of datasets without printing to the console
  return(datasets)
}
