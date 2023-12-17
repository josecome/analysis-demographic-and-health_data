library(openxlsx)
library(writexl)
library(readxl)
library(plyr)
library(dplyr)
library(gdata)
library(tidyr)

# HouseHolds DataFrame
id <- seq(1, 6000, by=1)
admin_1 <- LETTERS[1:1]
admin_2 <- LETTERS[1:6]
admin_3 <- LETTERS[1:12]
household_code <- c("")
registration_round <- sample(1:6, 6, replace = TRUE)
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
households <- data.frame (
  id,admin_1, admin_2, admin_3, household_code, registration_round, 
  registration_date, registration_update_date, registration_user, registration_update_user
)
names(households)
nrow(households)
head(households, 20)

# Individuals Dataframe
id <- seq(1, 60000, by=1)
first_name <- LETTERS[1:20]
last_name <- LETTERS[1:20]
date_of_birth <- c("1988-04-06")
gender <- c("Male")
education <- LETTERS[1:8]
occupation <- LETTERS[1:8]
occupation_other_esp <- c("")
registration_round <- seq(1, 6, by=1)
birth_id <- seq(1, 4000, by=1)
migration_id <- seq(1, 10000, by=1)
household_id <- seq(1, 6000, by=1)
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
individuals  <- data.frame(
  id, first_name, last_name, date_of_birth, gender, education, occupation, occupation_other_esp,
  birth_id, migration_id, household_id, registration_round, registration_date, registration_update_date, 
  registration_user, registration_update_user
)
head(individuals, 20)

# Birth Dataframe
id <- seq(1, 4000, by=1)
first_name <- LETTERS[1:20]
last_name <- LETTERS[1:20]
date_of_birth <- c("1988-04-06")
gender <- c("Male")
registration_round <- seq(1, 6, by=1)
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
births  <- data.frame(
  id, first_name, last_name, date_of_birth, registration_date, 
  registration_update_date, registration_user, registration_update_user
)
head(births)

# Deaths Dataframe
id <- seq(1, 5000, by=1)
date_of_death <- c("1988-04-06")
registration_round <- seq(1, 6, by=1)
individual_id <- seq(1, 5000, by=1)
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
deaths  <- data.frame(
  id, date_of_death, individual_id, registration_date, registration_update_date,
  registration_user, registration_update_user
)

# Migration Dataframe
id <- seq(1, 10000, by=1)
date_of_migration <- c("1988-04-06")
migration_type <- c("In")
from_region <- c("yes")
registration_round <- seq(1, 5, by=1)
individual_id <- seq(1, 5000, by=1)
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
migration  <- data.frame(
  id, first_name, last_name, date_of_migration, migration_type, from_region,
  individual_id, registration_round, registration_date, registration_update_date, registration_user, 
  registration_update_user
  
)
migration$registration_round <- ifelse(!is.na(migration$registration_round) & migration$id >9000, 6,migration$registration_round)







