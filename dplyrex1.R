# R dplyr : merge, Join , spread
# Merge with dplyr()
library(dplyr)
df_primary <- tribble(
  ~ID, ~y,
  "A", 5,
  "B", 5,
  "C", 8,
  "D", 0,
  "F", 9)
df_secondary <- tribble(
  ~ID, ~y,
  "A", 30,
  "B", 21,
  "C", 22,
  "D", 25,
  "E", 29)

left_join(df_primary, df_secondary, by = 'ID')
right_join(df_primary,df_secondary, by = 'ID')
inner_join(df_primary, df_secondary,by ='ID')
full_join(df_primary, df_secondary, by = 'ID')

# Multiple keys pair
df_primary <- tribble(
  ~ID, ~year, ~items,
  "A", 2015,3,
  "A", 2016,7,
  "A", 2017,6,
  "B", 2015,4,
  "B", 2016,8,
  "B", 2017,7,
  "C", 2015,4,
  "C", 2016,6,
  "C", 2017,6)
df_secondary <- tribble(
  ~ID, ~year, ~prices,
  "A", 2015,9,
  "A", 2016,8,
  "A", 2017,12,
  "B", 2015,13,
  "B", 2016,14,
  "B", 2017,6,
  "C", 2015,15,
  "C", 2016,15,
  "C", 2017,13)
left_join(df_primary, df_secondary, by = c('ID', 'year'))

# Data cleaning functions
#gather(data, key, value, na.rm = FALSE)
#Arguments:
#data: The data frame used to reshape the dataset 
#key: Name of the new column created
#value: Select the columns used to fill the key column
#na.rm: Remove missing values. FALSE by default
library(tidyr)
# Create a messy dataset
messy <- data.frame(
  country = c("A", "B", "C"),
  q1_2017 = c(0.03, 0.05, 0.01),
  q2_2017 = c(0.05, 0.07, 0.02),
  q3_2017 = c(0.04, 0.05, 0.01),
  q4_2017 = c(0.03, 0.02, 0.04))
messy
# Reshape the data
tidier <-messy %>%
  gather(quarter, growth, q1_2017:q4_2017)
tidier
# spread() function does the opposite of gather
# spread(data, key, value)
#arguments: 
#data: The data frame used to reshape the dataset 
#key: Column to reshape long to wide
#value: Rows used to fill the new column
# Reshape the data
messy_1 <-tidier %>%
  spread(quarter, growth)
messy_1
# separate(data, col, into, sep="", remove = TRUE)
#arguments:
#data: The data frame used to reshape the dataset 
#col: The column to split
#into: The name of the new variables
#sep: Indicates the symbol used that separates the variable, i.e.:  "-", "_", "&"
#remove: Remove the old column. By default sets to TRUE.
separate_tidier <- tidier %>%
  separate(quarter, c("Qrt", "year"), sep = "_")
head(separate_tidier)
# unite(data, col, conc, sep= "", remove= TRUE)
#arguments:
#data: The data frame used to reshape the dataset 
#col: Name of the new column
#conc: Name of the columns to concatenate
#sep: Indicates the symbol used that unites the variable, i.e:  "-", "_", "&"
#remove: Remove the old columns. By default, sets to TRUE
unit_tidier <- separate_tidier %>%
  unite(Quarter, Qrt, year, sep = "_")
head(unit_tidier)
