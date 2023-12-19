library(plyr)
library(dplyr)
library(gdata)
library(tidyr)
library(data.table)

# Get data in data folder and transform to be used in PowerBI
dir <- "C:/Users/COME/Downloads/Master Degree/Coding/Analisis/Data Analisis/analytics_demographic_and_health_data/"

# import files
households <- read.csv(paste0(dir, "data/households.csv"))
individuals <- read.csv(paste0(dir, "data/individuals.csv"))
births <- read.csv(paste0(dir, "data/births.csv"))
deaths <- read.csv(paste0(dir, "data/deaths.csv"))
migration <- read.csv(paste0(dir, "data/migration.csv"))

# Create DataFrame with Rounds number
id <- seq(1, 20, by=1)
description <- c("")
registration_round_table <- data.frame(id, description)


#======================================Data transformation==========================================================

individuals <- as.data.table(individuals)
# clmns=colnames(df)
aggr <- individuals[,.N,by=household_id]
individuals <- merge(individuals, aggr)

# colnames(df)[17] <- "Members"
colnames(individuals)[which(names(individuals) == "N")] <- "members"

households <- merge(households, individuals[,c("id", "members")], by = "id", all.x = TRUE )
migration$number <- 1

#==================================End of data transfomation======================================================

# dir.create(file.path(dir, "transformed_data"), showWarnings = FALSE)
# Saving transformed data
write.csv(registration_round_table, paste0(dir, "transformed_data/registration_round.csv"), row.names = FALSE)
write.csv(households, paste0(dir, "transformed_data/transformed_households.csv"), row.names = FALSE)
write.csv(individuals, paste0(dir, "transformed_data/transformed_individuals.csv"), row.names = FALSE)
write.csv(births, paste0(dir, "transformed_data/transformed_births.csv"), row.names = FALSE)
write.csv(deaths, paste0(dir, "transformed_data/transformed_deaths.csv"), row.names = FALSE)
write.csv(migration, paste0(dir, "transformed_data/transformed_migration.csv"), row.names = FALSE)

