#packages
library(dplyr)

#load dataset
data(iris)

#basic analysis
##summary
summary(iris)
##summary
str(iris) 
##first observations
head(iris)

#sepal length analysis
##setosa
SS <-subset(iris, subset=Sepal.Length & Species == "setosa") %>%
     select(-Sepal.Width, -Petal.Length, -Petal.Width)
##versicolor
SV <- SS <-subset(iris, subset=Sepal.Length & Species == "versicolor") %>%
  select(-Sepal.Width, -Petal.Length, -Petal.Width)
##virginica
SVI <- SS <-subset(iris, subset=Sepal.Length & Species == "virginica") %>%
  select(-Sepal.Width, -Petal.Length, -Petal.Width)
#boxplot
boxplot(SS$Sepal.Length, SV$Sepal.Length, SVI$Sepal.Length, xlab = "Species", ylab ="Lengths (cm)", las = 1, names=c("Setosa", "Versicolor", "Virginica"))
#range
max(iris$Sepal.Length)-min(iris$Sepal.Length)
max(SS$Sepal.Length)-min(SS$Sepal.Length) #setosa
max(SV$Sepal.Length)-min(SV$Sepal.Length) #versicolor
max(SVI$Sepal.Length)-min(SVI$Sepal.Length) #virginica