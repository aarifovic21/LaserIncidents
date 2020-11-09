library(tidyverse)
laser_2015 <- read.csv("data-raw/Laser_Report_2015_final.csv") %>%
  select(Incident.Date, Flight.ID, Aircraft, Altitude, Airport, Laser.Color, Injury, City, State)
laser_2016 <- read.csv("data-raw/Laser_Report_2016_final.csv") %>%
  select(Incident.Date, Flight.ID, Aircraft, Altitude, Airport, Laser.Color, Injury, City, State)
laser_2017 <- read.csv("data-raw/Laser_Report_2017_final.csv") %>%
  select(Incident.Date, Flight.ID, Aircraft, Altitude, Airport, Laser.Color, Injury, City, State)
laser_2018 <- read.csv("data-raw/Laser_Report_2018_final.csv") %>%
  select(Incident.Date, Flight.ID, Aircraft, Altitude, Airport, Laser.Color, Injury, City, State)
laser_2019 <- read.csv("data-raw/Laser_Report_2019_final.csv") %>%
  select(Incident.Date, Flight.ID, Aircraft, Altitude, Airport, Laser.Color, Injury, City, State)

#Merge dataset together & clean date
LaserIncidents <- bind_rows(laser_2015, laser_2016, laser_2017, laser_2018, laser_2019) %>%
  janitor::clean_names() %>%
  mutate(
    incident_date = as.character(incident_date),
    incident_date = gsub("-", "", incident_date),
    incident_date = gsub("(?<=[a-z])([1-9])", "\\ 201", incident_date, perl = TRUE),
    incident_date = as.Date(incident_date, "%d%b%Y")
  )

usethis::use_data(LaserIncidents)
