# By this script, tables are created
#=============================Tables====================================
# households
# individuals
# births
# deaths
# migration
#=======================================================================
dir <- "path"

# HouseHolds DataFrame
id <- seq(1, 6000, by=1)
admin_1 <- LETTERS[1:1]
admin_2 <- LETTERS[1:6]
admin_3 <- LETTERS[1:12]
household_code <- c("")
registration_round <- sample(1:6, 6, replace = TRUE)
registration_date <- c("02/18/18")
registration_update_date <- c("02/18/18")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
households <- data.frame (
  id,admin_1, admin_2, admin_3, household_code, registration_round, 
  registration_date, registration_update_date, registration_user, registration_update_user
)
households$registration_date <- as.Date(households$registration_date, format = "%m/%d/%y") + households$registration_round * 180
households$registration_update_date <- as.Date(households$registration_update_date, format = "%m/%d/%y") + households$registration_round * 180
households$registration_round <- sample(6, size = nrow(households), replace = TRUE)
households$household_code <- paste0(households$admin_1, "-", households$admin_2,"-", households$admin_1, "-", households$id)
names(households)
nrow(households)
head(households, 2)

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
registration_date <- c("02/18/18")
registration_update_date <- c("02/18/18")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
individuals  <- data.frame(
  id, first_name, last_name, date_of_birth, gender, education, occupation, occupation_other_esp,
  birth_id, migration_id, household_id, registration_round, registration_date, registration_update_date, 
  registration_user, registration_update_user
)
individuals$registration_date <- as.Date(individuals$registration_date, format = "%m/%d/%y") + individuals$registration_round * 180
individuals$registration_update_date <- as.Date(individuals$registration_update_date, format = "%m/%d/%y") + individuals$registration_round * 180
individuals$gender <- ifelse(individuals$id >28000, "Female", individuals$gender)
individuals$household_id <- sample(10, size = nrow(individuals), replace = TRUE)
individuals$registration_round <- sample(6, size = nrow(individuals), replace = TRUE)

head(individuals, 20)

# Birth Dataframe
id <- seq(1, 4000, by=1)
first_name <- LETTERS[1:20]
last_name <- LETTERS[1:20]
date_of_birth <- c("02/18/18")
gender <- c("Male")
registration_round <- seq(1, 5, by=1)
registration_date <- c("02/18/18")
registration_update_date <- c("02/18/18")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
births  <- data.frame(
  id, first_name, last_name, date_of_birth, registration_round, registration_date, 
  registration_update_date, registration_user, registration_update_user
)
births$registration_round <- ifelse(births$id > 3200, 6, births$registration_round)
births$date_of_birth <- as.Date(births$date_of_birth, format = "%m/%d/%y") + births$registration_round * 260
births$registration_date <- as.Date(births$registration_date, format = "%m/%d/%y") + births$registration_round * 180
births$registration_update_date <- as.Date(births$registration_update_date, format = "%m/%d/%y") + births$registration_round * 180
births$registration_round <- sample(6, size = nrow(births), replace = TRUE)
head(births)

# Deaths Dataframe
id <- seq(1, 5000, by=1)
date_of_death <- c("1988-04-06")
registration_round <- seq(1, 5, by=1)
individual_id <- seq(1, 5000, by=1)
registration_date <- c("02/18/18")
registration_update_date <- c("02/18/18")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
deaths  <- data.frame(
  id, date_of_death, individual_id, registration_round, registration_date, registration_update_date,
  registration_user, registration_update_user
)
deaths$registration_round <- ifelse(deaths$id > 4200, 6, deaths$registration_round)
deaths$date_of_death <- as.Date(deaths$date_of_death, format = "%m/%d/%y") + deaths$registration_round * 260
deaths$registration_date <- as.Date(deaths$registration_date, format = "%m/%d/%y") + deaths$registration_round * 180
deaths$registration_update_date <- as.Date(deaths$registration_update_date, format = "%m/%d/%y") + deaths$registration_round * 180
deaths$registration_round <- sample(6, size = nrow(deaths), replace = TRUE)

# Migration Dataframe
id <- seq(1, 10000, by=1)
date_of_migration <- c("02/18/18")
migration_type <- c("In")
from_region <- c("yes")
to_region <- c("yes")
registration_round <- seq(1, 5, by=1)
individual_id <- seq(1, 5000, by=1)
registration_date <- c("02/18/18")
registration_update_date <- c("02/18/18")
registration_user <- c("user_1")
registration_update_user <- c("user_1")
migration  <- data.frame(
  id, first_name, last_name, date_of_migration, migration_type, from_region, to_region,
  individual_id, registration_round, registration_date, registration_update_date, registration_user, 
  registration_update_user
  
)
migration$date_of_migration <- as.Date(migration$date_of_migration, format = "%m/%d/%y") + migration$registration_round * 260
migration$registration_date <- as.Date(migration$registration_date, format = "%m/%d/%y") + migration$registration_round * 180
migration$registration_update_date <- as.Date(migration$registration_update_date, format = "%m/%d/%y") + migration$registration_round * 180
migration$migration_type <- ifelse((migration$id%%2) == 0, "In", "Out")
migration$from_region <- ifelse((migration$id%%2) == 0, "Yes", "No")
migration$to_region <- ifelse((migration$id%%2) == 0, "Yes", "No")
migration$from_region <- ifelse(migration$migration_type == "Out", migration$from_region, "")

migration$registration_round <- ifelse(migration$id > 9000, 6,migration$registration_round)
migration$registration_round <- sample(6, size = nrow(migration), replace = TRUE)
migration$migration_type <- ifelse(migration$id > 8500,"In" ,migration$migration_type)
migration$to_region <- ifelse(migration$migration_type == "In", migration$to_region, "")

# dir.create(file.path(dir, "data"), showWarnings = FALSE)
write.csv(households, paste0(dir, "data/households.csv"), row.names = FALSE)
write.csv(individuals, paste0(dir, "data/individuals.csv"), row.names = FALSE)
write.csv(births, paste0(dir, "data/births.csv"), row.names = FALSE)
write.csv(deaths, paste0(dir, "data/deaths.csv"), row.names = FALSE)
write.csv(migration, paste0(dir, "data/migration.csv"), row.names = FALSE)




