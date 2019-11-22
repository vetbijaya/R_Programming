# Factors are variables in R. In a dataset, 2 types of variables: categorical & continuous
# Characters are not supported in machine learning algorithm, and the only way is to convert a string to an integer.

# let's create a factor data frame
# Create gender vector
gender_vector <- c("Male", "Female", "Male", "Female")
class(gender_vector)
# Convert gender_vector to a factor
factor_gender_vector <-factor(gender_vector)
class(factor_gender_vector)

# It is important to transform a string into factor when we perform Machine Learning task.
# A categorical variable can be divided into nominal categorical variable and ordinal categorical variable.
# Nominal categorical variable-order doesn't matter
# Create a color vector
color_vector <- c('blue', 'red', 'green', 'white', 'black', 'yellow')
# Convert the vector to factor
factor_color <- factor(color_vector)
factor_color

# Ordinal categorical variable - have natural ordering
# Create Ordinal categorical vector
day_vector <- c('evening', 'morning', 'afternoon', 'midday', 'midnight', 'evening')
# Convert day_vector to a factor with ordered level
factor_day <- factor(day_vector, order=TRUE, levels = c('morning', 'midday', 'afternoon', 'evening', 'midnight'))
# Print the new variable
factor_day
# Count the number of occurence of each level
summary(factor_day)

# Continuous variables- default value in R.
dataset <- mtcars
class(dataset)
