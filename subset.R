rm(list = ls())

Install_Load_Packages <- function(require){
  
  if (!require(xlsx)) {
    install.packages("xlsx")
    library(xlsx)
  }
  
  if (!require(stringr)) {
    install.packages("stringr")
    library(stringr)
  }
  
  if (!require(ggplot2)) {
    install.packages("ggplot2")
    library(ggplot2)
  }
  if (!require(regex)) {
    install.packages("regex")
    library(regex)
  }
}

All_Protests <- readxl::read_xlsx("USA_2020_2021_Apr02.xlsx")

# Cursory Overview: 
names(All_Protests)
head(All_Protests)

unique(All_Protests$ADMIN1)
# Out of curiosity 
table(All_Protests$ADMIN1)


# Subset to only include North Carolina Data from Summer 2020 

All_NC_Protests <- subset(All_Protests, 
                          All_Protests$ADMIN1 == "North Carolina")



Summer_2020_NC_Protests <- subset(All_NC_Protests,
                                  All_NC_Protests$EVENT_DATE >= "2020-6-01" &
                                  All_NC_Protests$EVENT_DATE <= "2020-08-31")

Summer_2020_NC_Protests$EVENT_DATE



# Now that we have our large dataframe subset to the observations over the 
# summer of 2020 (06/01/2020 to 08/31/2020) we need to: 
# 1.) Collapse observations 
# 2.) Create observations for est amount of protesters 

# Create new empty column in our Dataframe called "Est_Protest_Size"
Summer_2020_NC_Protests['Est_Protest_Size'] <- NA


# Loop through the Notes Section and find the estimated size per protest, 
# put that finding into the empty column Est_Protest_Size

Summer_2020_NC_Protests$EVENT_DATE[1] <- "2020-06-03"

Summer_2020_NC_Protests$EVENT_DATE[1]