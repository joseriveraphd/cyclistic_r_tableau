library(dplyr)
library(tidyverse)
library(lubridate)



#
rides <- trips_noneg_nodock %>% 
  mutate(weekday = as.character(wday(started_at, label = TRUE)))

#categorize by weekend vs workday
rides <- rides %>% 
  mutate(workday_or_weekend = case_when(
    weekday %in% c("Sun","Sat") ~ "weekend",
    weekday %in% c("Mon", "Tue", "Wed", "Thu", "Fri") ~ "workday"
    )
  )

#categorize by season of year
rides <- rides %>%
  mutate(season_of_year = case_when(
  month %in% as.character(c(12,01,02)) ~ "Winter",
  month %in% as.character(c(03,04,05)) ~ "Spring",
  month %in% as.character(c(06,07,08)) ~ "Summer",
  month %in% as.character(c(09,10,11)) ~ "Fall",
    )
  )

#Window function: Group by station name and then perform an average on that group for start lat and lng
station_rides <- rides %>%
  drop_na() %>% 
  group_by(start_station_name) %>%
  mutate(avg_start_lat = mean(start_lat)) %>%
  mutate(avg_start_lng = mean(start_lng))

#add time of day
station_rides_tod <- station_rides %>%
  mutate(hours = as.numeric(format(started_at, "%H")) + # convert time to hours + minutes + seconds
           as.numeric(format(started_at,"%M"))/60 + 
           as.numeric(format(started_at, "%S"))/3600
  ) %>%
  mutate(time=cut(hours, breaks = seq(0,23, by = 1))) #bin data into one hour intervals

#number of rides per time of day/workday_or_weekend/member_casual 
station_rides_num <- station_rides_tod %>%
  group_by(start_station_name, avg_start_lat, avg_start_lng, member_casual, workday_or_weekend, time) %>%
  summarise(num_rides = n())


