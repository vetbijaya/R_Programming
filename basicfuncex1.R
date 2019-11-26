#get and print current working directory
print(getwd())
# read csv file
#DMData <- read.csv("/Users/BIJAYA/Downloads/DM.csv", header = TRUE, sep = ",")
DMData <- read_csv("/Users/BIJAYA/Downloads/DM.csv")
DMData
a <-DMData %>% filter(!is.na (trimws(SEX))) # first way to filter
a <- DMData %>% filter(nchar(trimws(SEX)) != 0) # second way to trim
a <- DMData %>% filter(is.na(SEX))
a
#read EX.csv file
EXData <- read.csv("/Users/BIJAYA/Downloads/EX.csv", header = TRUE, sep = ",")
EXData
library(tidyverse)
MyData <- read_csv("/Users/BIJAYA/Downloads/DM.csv")
MyData %>% group_by(SEX) %>% count() # grouping and counting the data
Test <-MyData %>% filter(!is.na(SEX)) # filter data and missing values
MF <- Test %>% group_by(SEX) %>% count()
write_csv(MF,"abc.csv") # saving the file
df <- MyData %>% filter(!is.na(AGE), (!is.na(SEX))) 
mean(df$AGE)
MyData %>% group_by(SEX) %>% summarise(x=mean(AGE))
df %>% 
  group_by(SEX) %>% 
  summarise(x=mean(AGE), # mean of age by grouping data
            y=median(AGE),
            Examined= sum(EXAMED=="Y"), # adding one new col Examined which contains totals of Examed "Y"
            NotExamined=sum(EXAMED=="N")) # adding one new col NotExamined which contains totals of Examed "N"
df %>%
  group_by(SEX, EXAMED) %>%
  summarise(x=mean(AGE),
            y=sd(AGE)) # standard deviation 
