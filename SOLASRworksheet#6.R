#1
#install.packages("Hmisc")
#install.packages("pastecs")
library(Hmisc)
library(pastecs)

student <- c(1:10)
pretest <- c(55,54,47,57,51,61,57,54,63,58)
postest <- c(61,60,56,63,56,63,59,56,62,61)

studentdf <- data.frame(student,pretest,postest)
#A
describe(studentdf)
stat.desc(studentdf)


#2
#A
fertilizerlvl <- c("low","medium","high","low","medium","high")
orderedfertilizer <- factor(fertilizerlvl, ordered = TRUE, levels = c("low","medium","high"))
str(orderedfertilizer)

fertilizer_lvl <- c(10,10,10,20,20,50,10,50,20,50,20,10)
ordered_fertilizer <- factor(fertilizer_lvl, ordered = TRUE)
str(ordered_fertilizer)


#3.
#3 A factor can be employed to encapsulate the various levels undertaken by 10 subjects..
#A
ExerLvl <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")

ExerFactor <- factor(ExerLvl, levels = c("n", "l", "i"), labels = c("none", "light", "intense"))

print(ExerFactor)

#4.

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
#A. 
StateFactor<- factor(state)
print(StateFactor)
#The results show the various "Levels" listed in the vector.


#5.
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
#A. Sample Mean

incmeans <- tapply(incomes, StateFactor, mean)
print(incmeans)

#B. The results display the mean for each state given. 
#6.
#stdError <- function(x) sqrt(var(x)/length(x))
#incster <- tapply(incomes, statef, stdError)

#A. The standard error occurs because the vector was named 'state,' and the object 'statef' is not found.


#7.
#install.packages("titanic")
library(titanic)
data("titanic_train")
titanic_data <- titanic_train
#A

Survived <- subset(titanic_data, Survived == 1)
didntSurvived <- subset(titanic_data, Survived == 0)

print(Survived)
print(didntSurvived)

#8.
#install.packages("readr")
library(readr)
breastcancer_wisconsin <- read_csv("/cloud/project/CaballeroRworksheet#6/breastcancer_wisconsin.csv")
print(breastcancer_wisconsin)



str(breastcancer_wisconsin)
#A. The dataset is all about the recorded data of people that have breastcancer and its characteristics.


# d.1 Standard error of the mean for clump thickness
clump_thickness_sem <- sd(breastcancer_wisconsin$`clump_thickness`)/sqrt(length(breastcancer_wisconsin$`clump_thickness`))
print(clump_thickness_sem)

# d.2 Coefficient of variability for Marginal Adhesion
marg_adh_cv <- sd(breastcancer_wisconsin$`marginal_adhesion`)/mean(breastcancer_wisconsin$`marginal_adhesion`) * 100
print(marg_adh_cv)



