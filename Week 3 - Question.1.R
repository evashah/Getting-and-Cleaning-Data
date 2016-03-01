# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Week 3 - Quiz - Question 1

# load package
library(httr)

# set working director and create a folder where you want to download the file  
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg",destfile="./quiz3/jpeg.jpg",mode="wb")
setwd("./Coursera/Getting_Cleaning_Data/Week3")
if(!file.exists("./quiz3")){dir.create("./quiz3")}

# download file and assign to a vector
fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl,destfile="./quiz3/idahohousing.csv")
housingData <- read.csv("./quiz3/idahohousing.csv")

# check data, understand the contents
summary(housingData$ACR)
summary(housingData$AGS)

# find data that meets 2 criterias 
agricultureLogical<-which(housingData$ACR > "2" & housingData$AGS >"5")
agricultureLogical

# First 3 values are: 125,238,262


