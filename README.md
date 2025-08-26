# JapanAPIs

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

The `JapanAPIs` package provides a unified interface to access open data from the **World Bank API**, **Nager.Date API**, and the **REST Countries API**, with a focus on **Japan**. It allows users to retrieve up-to-date or historical information on topics such as economic indicators, population statistics, national holidays, and basic geopolitical details.

In addition to API-access functions, the package includes one of the largest curated collections of open datasets related to **Japan**. These datasets cover a wide range of topics including natural disasters, economic production, the vehicle industry, air quality, demographic trends, and administrative divisions.

## Installation

You can install the `JapanAPIs` package from CRAN with the following R function:

```R

install.packages("JapanAPIs")

```


## Usage

After installation, load the package and start exploring and using its functions and datasets.

```R

library(JapanAPIs)

```

### JapanAPIs Functions

Below is a list of the main functions included in the package:

- `get_japan_child_mortality()`: Get Under-5 Mortality Rate in Japan from World Bank

- `get_japan_cpi()`: Get Japan's Consumer Price Index from World Bank

- `get_japan_energy_use()`: Get Japan's Energy Use (kg of oil equivalent per capita) from World Bank

- `get_japan_gdp()`: Get Japan's GDP (Current US$) from World Bank

- `get_japan_holidays()`: Get official public holidays in Japan for a given year, e.g. get_japan_holidays(2025)

- `get_japan_hospital_beds()`: Get Hospital Beds per 1,000 People in Japan from World Bank

- `get_japan_life_expectancy()`: Get Japan's Life Expectancy at Birth from World Bank

- `get_japan_literacy_rate()`: Get Japan's Literacy Rate (Age 15+) from World Bank

- `get_japan_population()`: Get Japan's Total Population from World Bank

- `get_japan_unemployment()`: Get Japan's Unemployment Rate from World Bank

- `get_country_info_jp()`: Get Key Country Information About Japan from the REST Countries API

- `view_datasets_JapanAPIs()`: View Available Datasets in JapanAPIs


## Dataset Suffixes

Each dataset in `JapanAPIs` is labeled with a *suffix* to indicate its structure and type:

- `_df`: A standard data frame.

- `_tbl_df`: A tibble data frame object.

- `_ts`: A time series object.

- `_vec`: A numeric vector object.


## Datasets Included in JapanAPIs

In addition to API access functions, `JapanAPIs` offers one of the largest curated collections of open datasets focused on **Japan**. These preloaded datasets cover a wide range of topics including demography, natural disasters, public health, sports, centenarians, atomic bomb survivors, earthquakes, and administrative data. Below are some featured examples:

- `jpn_usd_exchange_df`: A Data frame containing weekly observations of the yen-dollar exchange rate from 1975 to 1989.

- `jpn_prefectures_tbl_df`: A tibble representing Japan’s 47 prefectures arranged in a 7x7 grid layout.

- `kobe_quake_1995_ts`: A time series containing data related to the 1995 Kobe earthquake.


## Example Code:

```R

# Load the package

library(JapanAPIs)

# Retrieves essential information about Japan

get_country_info_jp()

# Get Japan's Population (Total) from World Bank

get_japan_population()

# Load a dataset

data(japan_population_tbl_df)

# Shows six rows of the dataset

head(japan_population_tbl_df)

# Display the structure of the dataset

str(japan_population_tbl_df)

# Shows the whole dataset

View(japan_population_tbl_df)


```
