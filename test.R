data <- data.frame(x1 = 1:5,  
                   x2 = 6:10,
                   x3 = 11:15)

data

data1 <- data 
for (i in 1:ncol(data1)) {
  data1[,i] <- data[ , i] + 10
}

data1 

sample_string <- as.character("On 5 June 2020, about 1000 UNC students supporting Black Lives Matter marched in Chapel Hill (Orange, North Carolina) against police brutality. [size=around 1000]")



str_detect(sample_string, "size=")



x <- str_split(sample_string, "size=")

Est_Protest_size <- 