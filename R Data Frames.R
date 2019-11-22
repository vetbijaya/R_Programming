# R Data Frames: Create, Append, Select, Subset
# Data frame is a list of vectors of equal length.
# We can create data frame by passing the variables a,b,c,d into the data.frame()function.
# Create a, b, c, d variables
a <- c(10, 20, 30, 40)
b <- c('book', 'pen', 'textbook', 'pencil_case')
c <- c(TRUE, FALSE, TRUE, FALSE)
d <- c(2.5, 8, 10, 7)
# Join the variables to create a data frame
df <- data.frame(a,b,c,d)
df
# Name the data frame
names(df) <- c('ID', 'items', 'store', 'price')
df
# Print the structure
str(df)
# Slice data frame
# Select row 1 in column 2
df[1,2]
# Select rows 1 to 2
df[1:2,]
# select columns 1
df[,1]
# Select Rows 1 to 3 and columns 3 to 4
df[1:3, 3:4]
# Slice with columns name
df[, c('ID', 'store')]
# Append a column to data frame by using $ sign.
# Create a new vector
quantity <- c(10, 35, 40, 5)
# Add quantity to the df data frame
df$quantity <- quantity
df
# Select a column of a data frame
df$ID
# Subset a data frame by using subset(x, condition)
# Select price above 5
subset(df, subset = price >5)