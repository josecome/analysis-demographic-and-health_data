library(plyr)
library(dplyr)
library(gdata)
library(tidyr)

# Get data in data folder and transform to be used in PowerBI
dir <- "C:/Users/COME/Downloads/Master Degree/Coding/Analisis/Data Analisis/analytics_demographic_and_health_data/"

# import files
households <- read.csv(paste0(dir, "data/households.csv"), row.names = FALSE)
individuals <- read.csv(paste0(dir, "data/individuals.csv"), row.names = FALSE)
births <- read.csv(paste0(dir, "data/births.csv"), row.names = FALSE)
deaths <- read.csv(paste0(dir, "data/deaths.csv"), row.names = FALSE)
migration <- read.csv(paste0(dir, "data/migration.csv"), row.names = FALSE)

# Data transformation


# End of data transfomation
# dir.create(file.path(dir, "transformed_data"), showWarnings = FALSE)
# Saving transformed data
write.csv(households, paste0(dir, "transformed_data/transformed_households.csv"), row.names = FALSE)
write.csv(individuals, paste0(dir, "transformed_data/transformed_individuals.csv"), row.names = FALSE)
write.csv(births, paste0(dir, "transformed_data/transformed_births.csv"), row.names = FALSE)
write.csv(deaths, paste0(dir, "transformed_data/transformed_deaths.csv"), row.names = FALSE)
write.csv(migration, paste0(dir, "transformed_data/transformed_migration.csv"), row.names = FALSE)

