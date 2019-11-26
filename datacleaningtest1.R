# 1. Create a summary table  with mean and standard deviation for age by sex in DM dataset
library("tidyverse")
MyData <- read.csv("/USERS/BIJAYA/Downloads/DM.csv")
MyData

DMData <- MyData %>% filter(!is.na(AGE))
DMData <- DMData[!DMData$SEX %in% "", ]
DMData
SummaryDM <- DMData %>%
  group_by(SEX) %>%
  summarise (Mean = mean(AGE, na.rm = TRUE),SD = sd(AGE, na.rm = TRUE))
SummaryDM

#2. Create a  summary table with mean and standard deviation for age by sex per examed
CleanDM <- DMData 
ExamDM <- CleanDM %>%
  group_by(SEX, EXAMED) %>%
  summarise(Mean = mean(AGE, na.rm = TRUE), SD = sd(AGE, na.rm = TRUE))
ExamDM

#3. Merge DM and EX datset with ID varuabe  
MyData1 <- read.csv("/USERS/BIJAYA/Downloads/EX.csv")
MyData1
#DMEX <- full_join(MyData, MyData1, "ID")
DMEX <- merge(MyData, MyData1, by.x = "ID" ,by.y= "ID")
DMEX
str(DMEX)
# change INITALVISIT and FINALVISIT from factor to character
DMEX$INITALVISIT <- as.character(DMEX$INITALVISIT)
DMEX$FINALVISIT <- as.character(DMEX$FINALVISIT)
# replace blank INITALVISIT and blank FINALVISIT with 2014-01-01 and 2015-01-01
DMEX$INITALVISIT[DMEX$INITALVISIT %in% ""] <- "2014-01-01"
DMEX$FINALVISIT[DMEX$FINALVISIT %in% ""] <- "2015-01-01"

# find unique values
unique(DMEX$SEX)

#calculate new variable totaldays by using initial visit and final visit variables                            
DMEX$Totaldays <- as.Date(as.character(DMEX$FINALVISIT), format="%Y-%m-%d") - 
  as.Date(as.character(DMEX$INITALVISIT), format = "%Y-%m-%d", na.rm = TRUE)
DMEX

#4. Plot the barplot of Urine variable by Examed variable
DMEX1 <- DMEX %>% filter(!is.na(URINE), (!is.na(EXAMED)))
DMEX1 <- DMEX1[!DMEX1$EXAMED %in% "",]
library(lattice)
barchart(DMEX1$URINE~DMEX1$EXAMED, ylab = "URINE")

