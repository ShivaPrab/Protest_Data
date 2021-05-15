library(dplyr)
library(stringr)

# Attempt at for loop 
data <- data.frame(x1 = 1:5,  
                   x2 = 6:10,
                   x3 = 11:15)

data

data1 <- data 
for (i in 1:ncol(data1)) {
  data1[,i] <- data[ , i] + 10
}

data1 


# Sample string, get out "around 1000" and place in a new col 
sample_string <- as.character("On 5 June 2020, about 1000 UNC students supporting Black Lives Matter marched in Chapel Hill (Orange, North Carolina) against police brutality. [size=around 1000]")


size <- stringr::str_detect(sample_string, "size=")

size <- stringr::str_extract(sample_string, "\size=\w")
size

df <- 

df <- df %>%
  mutate(est_size = trimws(str_extract(sample_string, '(?<=size=)[^\\]]+')))