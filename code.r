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

#####################sepal length analysis#####################
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
boxplot(SS$Sepal.Length, 
        SV$Sepal.Length, 
        SVI$Sepal.Length, 
        xlab = "Species", 
        ylab ="Lengths (cm)", 
        las = 1, 
        names=c("Setosa", "Versicolor", "Virginica"))
#range
max(iris$Sepal.Length)-min(iris$Sepal.Length)
max(SS$Sepal.Length)-min(SS$Sepal.Length) #setosa
max(SV$Sepal.Length)-min(SV$Sepal.Length) #versicolor
max(SVI$Sepal.Length)-min(SVI$Sepal.Length) #virginica
#variance
var(SS$Sepal.Length) #setosa
var(SV$Sepal.Length) #versicolor
var(SVI$Sepal.Length) #virginica
#histogram
par(mfrow = c(1,3))
hist(SS$Sepal.Length, main "Sepal Length: n\ Setosa", xlab = "Length (cm)")
hist(SV$Sepal.Length, main "Sepal Length: n\ Versicolor", xlab = "Length (cm)")
hist(SVI$Sepal.Length, main "Sepal Length: n\ Virginica", xlab = "Length (cm)")
