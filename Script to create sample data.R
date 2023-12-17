library(openxlsx)
library(writexl)
library(readxl)
library(plyr)
library(dplyr)
library(gdata)
library(tidyr)

# HouseHolds DataFrame
id <- seq(1, 6000, by=1)
admin_1 <- c("Province_A")
admin_2 <- c("District_A")
admin_3 <- c("Locality_A")
household_number <- c(1)
household_code <- c("A-A-A-1")
registration_round <- c("1")
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
households <- data.frame (
  id,admin_1,admin_2,admin_3, household_number, household_code, registration_round, 
  registration_date, registration_update_date, registration_user, registration_update_user
)
names(households)
head(households)

# Individuals Dataframe
id <- seq(1, 60000, by=1)
first_name <- c("Aaaa")
last_name <- c("Bbbb")
date_of_birth <- c("1988-04-06")
gender <- c("Male")
education <- c("level 1")
occupation <- c("Mechanic")
occupation_other_esp <- c("")
registration_round <- c("1")
birth_id <- c(1)
migration_id <- c(as.numeric(NA))
household_id <- seq(1, 6000, by=1)
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
individuals  <- data.frame(
  id, first_name, last_name, date_of_birth, gender, education, occupation, occupation_other_esp,
  birth_id, migration_id, household_id, registration_date, registration_update_date, registration_user, 
  registration_update_user
)
head(individuals)

# Birth Dataframe
id <- seq(1, 4000, by=1)
first_name <- c("Aaaa")
last_name <- c("Bbbb")
date_of_birth <- c("1988-04-06")
gender <- c("Male")
registration_round <- c("1")
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
registration_round <- c("1")
individual_id <- seq(1, 6000, by=1)
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
births  <- data.frame(
  id, first_name, last_name, date_of_death, individual_id, registration_date, 
  registration_update_date, registration_user, registration_update_user
)

# Migration Dataframe
id <- seq(1, 10000, by=1)
date_of_migration <- c("1988-04-06")
migration_type <- c("In")
from_region <- c("yes")
registration_round <- c("1")
individuals_id <- seq(1, 6000, by=1)
registration_date <- c("2023-01-01")
registration_update_date <- c("2023-01-01")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
migration  <- data.frame(
  id, first_name, last_name, date_of_migration, migration_type, from_region, individuals_id, registration_date, 
  registration_update_date, registration_user, registration_update_user
)







