# date to season!
#
# this function converts a date to a season
date_to_season <- function(date){
# empty output factor
  season <- factor(levels = c("spring", "summer", "fall", "winter"))
# check if a month can be extracted
  moy <- tryCatch(lubridate::month(date),
           error = function(e){print(paste("non-date argument", date));NaN})
# calculate season
 if(moy > 2 & moy < 6){season <- "spring"}
 else if(moy > 5 & moy < 9){season <- "summer"}
 else if(moy > 8 & moy < 12){season <- "fall"}
 else if(moy > 11 | moy < 3){season <- "winter"}
 else(NA)
# output
 return(season)
}


