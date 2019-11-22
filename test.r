# basics of R
# to get the first five rows
head(iris)

# to get the last 5 rows
tail(iris)

# reading the data from table iris
data <- iris
# getting the summary of iris
summary(iris)


# Removing NA values
x <- c(1, 2, NA, 4, NA, 6)
bad <- is.na(x)
x[!bad]

# subset with no missing values
x <- c(1,2,NA,4,NA,5)
y <- c("a", "b", NA, "d", NA, "f")
good <-complete.cases(x,y) # complete.cases function
good
