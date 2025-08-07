# JapanAPIs - Access Japanese Data via Public APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# utils.R


utils::globalVariables(c(


  # Variables of the get_japan_child_mortality function
  "indicator", "country", "year", "value",

  # Variables of the get_japan_cpi function
  "indicator", "country", "year", "value",

  # Variables of the get_japan_energy_use function

  "indicator","country","year","value",

  # Variables of the get_japan_gdp function
  "indicator","country","year","value","value_label",

  # Variables of the get_japan_health_expenditure function
  "indicator","country","year","value",

  # Variables of the get_japan_holidays function
  "date","local_name","name",

  # Variables of the get_japan_hospital_beds function
  "indicator","country","year","value",

  # Variables of the get_japan_life_expectancy function
  "indicator","country","year","value",

  # Variables of the get_japan_literacy_rate function
  "indicator","country","year","value",

  # Variables of the get_japan_population function
  "indicator","country","year","value","value_label",

  # Variables of the get_japan_unemployment function
  "indicator","country","year","value",


  # Variables of the get_country_info_jp function
  "name_common","name_official","region","subregion","capital","area","population","languages"

))

utils::globalVariables(c("data"))
