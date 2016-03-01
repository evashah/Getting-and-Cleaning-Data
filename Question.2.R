# Getting and Cleaning Data
# Coursera
# John Hopkins University

# Week 3 - Quiz - Question 2

# install and load package
install.packages("jpeg")
library(jpeg)

# download JPEG file - dont forget to include mode="wb" or you will get an error
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg",destfile="./quiz3/jpeg.jpg",mode="wb")

# read JPEG file assign to vector
img <- readJPEG("./quiz3/jpeg.jpg",native=TRUE)

# calculate quantile at 30th and 80th percentile
quantile(img,probs=c(0.3,0.8))

