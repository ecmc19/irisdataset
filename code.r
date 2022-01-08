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

##################### Sepal length analysis #####################
##setosa
SS <-subset(iris, subset=Sepal.Length & Species == "setosa") %>%
     select(-Sepal.Width, -Petal.Length, -Petal.Width)
##versicolor
SV <-subset(iris, subset=Sepal.Length & Species == "versicolor") %>%
     select(-Sepal.Width, -Petal.Length, -Petal.Width)
##virginica
SVI <-subset(iris, subset=Sepal.Length & Species == "virginica") %>%
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
hist(SS$Sepal.Length, main = "Sepal Length: \n Setosa", xlab = "Length (cm)")
hist(SV$Sepal.Length, main = "Sepal Length: \n Versicolor", xlab = "Length (cm)")
hist(SVI$Sepal.Length, main = "Sepal Length: \n Virginica", xlab = "Length (cm)")


##################### Petal length analysis #####################
##setosa
PS <-subset(iris, subset=Petal.Length & Species == "setosa") %>%
     select(-Sepal.Width, -Sepal.Length, -Petal.Width)
##versicolor
PV <-subset(iris, subset=Petal.Length & Species == "versicolor") %>%
     select(-Sepal.Width, -Sepal.Length, -Petal.Width)
##virginica
PVI <-subset(iris, subset=Petal.Length & Species == "virginica") %>%
      select(-Sepal.Width, -Sepal.Length, -Petal.Width)
#boxplot
boxplot(PS$Petal.Length, 
        PV$Petal.Length, 
        PVI$Petal.Length, 
        xlab = "Species", 
        ylab ="Lengths (cm)", 
        las = 1, 
        names=c("Setosa", "Versicolor", "Virginica"))
#range
max(iris$Petal.Length)-min(iris$Petal.Length)
max(PS$Petal.Length)-min(SS$Petal.Length) #setosa
max(PV$Petal.Length)-min(SV$Petal.Length) #versicolor
max(PVI$Petal.Length)-min(SVI$Petal.Length) #virginica
#variance
var(PS$Petal.Length) #setosa
var(PV$Petal.Length) #versicolor
var(PVI$Petal.Length) #virginica
#histogram
par(mfrow = c(1,3))
hist(PS$Petal.Length, main = "Petal Length: \n Setosa", xlab = "Length (cm)")
hist(PV$Petal.Length, main = "Petal Length: \n Versicolor", xlab = "Length (cm)")
hist(PVI$Petal.Length, main = "Petal Length: \n Virginica", xlab = "Length (cm)")
