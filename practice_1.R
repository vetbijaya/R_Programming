df <- read.csv("heart.csv")
str(df)
# creating a new variable
# ctrl L to clear the console 
x <- df$age
y <- df$sex
z <- df$cp

# show the frequency of age
#histogram for age
hist(x)

#table for frequence of the data
table(x)

#create new dataframe 
newdf <- data.frame(x,y,z)

# writing an object to a file 
write.csv(newdf,"~/Desktop/new_data_heart.csv")

#pull new created data

#create a scatterplot 
plot(df$age,df$chol)
cor(df$age,df$chol)

# create a new variable
a <- df$exang
b<- df$ca
c <- df$target
df1 <- data.frame(a,b,c)
print(df1)
# writing a file
write.csv(df1,"~/Desktop/new_dataset.csv")
# create new varaible
d <- a+b+c
d
df1 <- data.frame(a,b,c,d)
write.csv(df1,"~/Desktop/new_df1.csv")

# give me the record of the patient whose age is greater than 60
new_df_60 <- df[df$age > 60 ,]
# 60 barsha bhanda mathi tara male chai sex == 1
newdf60_1 <- df[df$age > 60 & df$sex == 1, ]
newdf60_1
# age > 60, sex=0, chol >150
newdf60_0 <- df[df$age > 60 & df$sex == 0 & df$chol >150 ,]
head(newdf60_0)

#total length of the records 
rec_len <- length(newdf60_0$age)

newdf60_0 <- df[df$age > 60 & df$sex == 0 & df$chol >150 , c("age","sex","chol")]

#task get all the records of df where age < 60 sex = 0 and chol is less than 180 
#save this data with only age, sex and chole in a new file xyz.csv with seicolon seperator
newtest <- df[df$age <60 & df$sex ==0 & df$chol <= 180 , c("age", "sex", "chol")]
newtest
head(newtest)
# count of total record
length(newtest)
# save this newtest in Desktop
write.csv(newtest, "~/Desktop/xyz.csv")
# read file
newtest_1 <- read.csv("~/Desktop/xyz.csv" )
newtest_1

#merging dummy datasets
x <- data.frame(id = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5), data = 1:5)
y <- data.frame(id = c(NA,2,NA,4,5), k7 = c(NA,NA,3,4,5), data = 1:5)
#inner join
merge(x, y, by = c("id","id"))
