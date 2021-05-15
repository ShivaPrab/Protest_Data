library(dplyr)
library(stringr)


df <- structure(list(notes = c("On 5 June, some people walked down the street in this area. [size=around 5]", 
                               "On 6 June, some people rode bikes down the street in this area. [size= nearly 4]", 
                               "On 7 June, some people walked into a grocery store in this area. [size= about 100]", 
                               "On 10 July, an hundreds of people drank water from this fountain [size=hundreds]", 
                               "on 15 August, an unreported amount of people drove their cars down the street. [size= no report]"
)), class = "data.frame", row.names = c(NA, -5L))



df <- df %>%
  mutate(est_size = trimws(str_extract(notes, '(?<=size=)[^\\]]+')))