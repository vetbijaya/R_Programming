# Lists in R: Create, Select
# we Create three different objects, a vector, a matrix and a data frame

# Step 1- Create a Vector
# Vector with numeric from 1 up to 5
vect <- 1:5

# Step 2- Create a Matrix
# A 2x 5 matrix
mat <- matrix(1:9, ncol = 5)
dim(mat)

# Step 3- Create Data Frame
# Select the 10th row of the built-in R data set EuStockMarkets
df <- EuStockMarkets[1:10,]

# Step 4- Create a List
# Construct list with these vec, mat and df:
my_list <- list(vect, mat, df)
my_list

# Select elements from list
# Print second element of the list
my_list[[2]]

# Built-in data frame
# Print the head of the data
PATH<-'https://raw.githubusercontent.com/vincentarelbundock/Rdatasets/master/csv/wooldridge/prison.csv'
df <- read.csv(PATH)[1:5]
head(df, 5)

# Check the structure of the data
str(df)

# R sort a data frame using Order
library(dplyr)
set.seed(1234)
data_frame <- tibble(
  c1 = rnorm(50, 5, 1.5),   
  c2 = rnorm(50, 5, 1.5),  
  c3 = rnorm(50, 5, 1.5),
  c4 = rnorm(50, 5, 1.5), 	
  c5 = rnorm(50, 5, 1.5)
)
# Sort by c1
df <-data_frame[order(data_frame$c1),]
head(df)
