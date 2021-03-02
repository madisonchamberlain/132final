#library(tidyverse)
#library(nyctaxi)



#load('~/Research/DataSets/TaxiTripData/YellJan19_100K.RData')
#yell <- yellJan19_100

yell<-read.csv('yellow_tripdata_2019-01.csv', header = TRUE)
# get the names of all of the columns
names(yell)

# get the types of all of the columns
for(i in 1:ncol(yell)) print(class(yell[,i]))

# remove some columns
yell <- yell[,c(2,3,4,5,8,9)]

# change to correct types
yell[,1] <- as.character(yell[,1])
yell[,2] <- as.character(yell[,2])
yell[,5] <- as.factor(yell[,5])
yell[,6] <- as.factor(yell[,6])