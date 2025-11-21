# Packages
library(tidyverse)
library(data.table)
library(readr)
library(readxl)
library(openxlsx)
library(googlesheets4)
library(future)
library(furrr)
library(janitor)
library(here)
library(ggplot2)

# 1) Read and clean data (from CSV / Excel / Google Sheets)
# 2) Compute raw shares and raw rates
# 3) Apply a function `empirical_bayes_rates()` that:
#      - groups by year
#      - computes m, nbar, S2, C_i
#      - returns rate_bayes and crimes_bayes
# 4) Recalculate participation using crimes_bayes
# 5) Summarize 10-year averages per unit
# 6) Export results to Excel (openxlsx) and/or Google Sheets
