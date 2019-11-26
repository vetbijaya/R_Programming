# sample code defining objects for matrix in R
GeneticEngRice <- data.frame(list(year=c(2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017), Insect =c(13, 12, 18, 23, 26, 25, 24, 19, 13, 10, 15, 14, 14, 4, 3), Herbicide=c(3, 3, 3, 4, 5, 6, 12, 15, 15, 15, 15, 17, 18, 7, 5)))
GeneticEngRice

#Predict from full GeneticEngRice dataset, Insect as independent variable and herb as dependent
PredictHerb <- lm(GeneticEngRice$Herbicide ~ GeneticEngRice$Insect)
PredictHerb

#Show coefficients obtained by fitting linear regression model to the dataset
PredictHerb$coef
