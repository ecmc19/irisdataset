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
        main = "Sepal Width",
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
par(mfrow = c(1,1))
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
par(mfrow = c(1,1)) #fix previous code
boxplot(PS$Petal.Length, 
        PV$Petal.Length, 
        PVI$Petal.Length, 
        xlab = "Species", 
        ylab ="Lengths (cm)",
        main = "Petal Length",
        las = 1, 
        names=c("Setosa", "Versicolor", "Virginica"))
#range
max(iris$Petal.Length)-min(iris$Petal.Length)
max(PS$Petal.Length)-min(PS$Petal.Length) #setosa
max(PV$Petal.Length)-min(PV$Petal.Length) #versicolor
max(PVI$Petal.Length)-min(PVI$Petal.Length) #virginica
#variance
var(PS$Petal.Length) #setosa
var(PV$Petal.Length) #versicolor
var(PVI$Petal.Length) #virginica
#histogram
par(mfrow = c(1,3))
hist(PS$Petal.Length, main = "Petal Length: \n Setosa", xlab = "Length (cm)")
hist(PV$Petal.Length, main = "Petal Length: \n Versicolor", xlab = "Length (cm)")
hist(PVI$Petal.Length, main = "Petal Length: \n Virginica", xlab = "Length (cm)")

##################### Sepal width analysis #####################
##setosa
WS <-subset(iris, subset=Sepal.Width & Species == "setosa") %>%
     select(-Sepal.Length, -Petal.Length, -Petal.Width)
##versicolor
WV <-subset(iris, subset=Sepal.Width  & Species == "versicolor") %>%
     select(-Sepal.Length, -Petal.Length, -Petal.Width)
##virginica
WVI <-subset(iris, subset=Sepal.Width & Species == "virginica") %>%
      select(-Sepal.Length, -Petal.Length, -Petal.Width)
#boxplot
par(mfrow = c(1,1)) #fix previous code
boxplot(WS$Sepal.Width, 
        WV$Sepal.Width, 
        WVI$Sepal.Width, 
        xlab = "Species", 
        ylab ="Widths (cm)",
        main = "Sepal Width",
        las = 1, 
        names=c("Setosa", "Versicolor", "Virginica"))
#range
max(iris$Sepal.Width)-min(iris$Sepal.Width)
max(WS$Sepal.Width)-min(WS$Sepal.Width) #setosa
max(WV$Sepal.Width)-min(WV$Sepal.Width) #versicolor
max(WVI$Sepal.Width)-min(WVI$Sepal.Width) #virginica
#variance
var(WS$Sepal.Width) #setosa
var(WV$Sepal.Width) #versicolor
var(WVI$Sepal.Width) #virginica
#histogram
par(mfrow = c(1,3))
hist(WS$Sepal.Width, main = "Sepal Width: \n Setosa", xlab = "Width (cm)")
hist(WV$Sepal.Width, main = "Sepal Width: \n Versicolor", xlab = "Width (cm)")
hist(WVI$Sepal.Width, main = "Sepal Width: \n Virginica", xlab = "Width (cm)")

##################### Petal width analysis #####################
##setosa
WPS <-subset(iris, subset=Petal.Width & Species == "setosa") %>%
     select(-Sepal.Length, -Petal.Length, -Sepal.Width)
##versicolor
WPV <-subset(iris, subset=Petal.Width  & Species == "versicolor") %>%
     select(-Sepal.Length, -Petal.Length, -Sepal.Width)
##virginica
WPVI <-subset(iris, subset=Petal.Width & Species == "virginica") %>%
      select(-Sepal.Length, -Petal.Length, -Sepal.Width)
#boxplot
par(mfrow = c(1,1)) #fix previous code
boxplot(WPS$Petal.Width, 
        WPV$Petal.Width, 
        WPVI$Petal.Width, 
        xlab = "Species", 
        ylab ="Widths (cm)",
        main = "Petal Width",
        las = 1, 
        names=c("Setosa", "Versicolor", "Virginica"))
#range
max(iris$Petal.Width)-min(iris$Petal.Width)
max(WPS$Petal.Width)-min(WPS$Petal.Width) #setosa
max(WPV$Petal.Width)-min(WPV$Petal.Width) #versicolor
max(WPVI$Petal.Width)-min(WPVI$Petal.Width) #virginica
#variance
var(WPS$Petal.Width) #setosa
var(WPV$Petal.Width) #versicolor
var(WPVI$Petal.Width) #virginica
#histogram
par(mfrow = c(1,3))
hist(WPS$Petal.Width, main = "Petal Width: \n Setosa", xlab = "Width (cm)")
hist(WPV$Petal.Width, main = "Petal Width: \n Versicolor", xlab = "Width (cm)")
hist(WPVI$Petal.Width, main = "Petal Width: \n Virginica", xlab = "Width (cm)")


##################### :dizzy: Correlation analysis :dizzy:#####################
