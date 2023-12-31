#1.
shoe_size <- c(6.5,9.0,8.5,8.5,10.5,7.0,9.5,9.0,13.0,7.5,10.5,8.5,12.0,10.5,13.0,11.5,8.5,5.0,10.0,6.5,7.5,8.5,10.5,8.5,10.5,11.0,9.0,13.0)
height <- c(66.0,68.0,64.5,65.0,70.0,64.0,70.0,71.0,72.0,64.0,74.5,67.0,71.0,71.0,77.0,72.0,59.0,62.0,72.0,66.0,64.0,67.0,73.0,69.0,72.0,70.0,69.0,70.0)
houseHold_data <- data.frame(shoe_size,height)
houseHold_data
library(readr)
csv_file<-"HouseholdData.csv"
write.csv(houseHold_data,file = csv_file)
houseHold_data<-read.csv("HouseholdData.csv")

#A IT SHOWS THE DATA OF SHOE SIZE AND HEIGHT
#shoe_size height
#1        6.5   66.0
#2        9.0   68.0
#3        8.5   64.5
#4        8.5   65.0
#5       10.5   70.0
#6        7.0   64.0
#7        9.5   70.0
#8        9.0   71.0
#9       13.0   72.0
#10       7.5   64.0
#11      10.5   74.5
#12       8.5   67.0
#13      12.0   71.0
#14      10.5   71.0
#15      13.0   77.0
#16      11.5   72.0
#17       8.5   59.0
#18       5.0   62.0
#19      10.0   72.0
#20       6.5   66.0
#21       7.5   64.0
#22       8.5   67.0
#23      10.5   73.0
#24       8.5   69.0
#25      10.5   72.0
#26      11.0   70.0
#27       9.0   69.0
#28      13.0   70.0

#B THE RESULT SHOWS THE SUBSET OF M AND F WITH THEIR CORRESPONDING SHOE SIZE AND HEIGHT.
gender <- c("F","F","F","F","M","F","F","F","M","F","M","F","M","M","M","M","F","F","M","F","F","M","M","F","M","M","M","M")
final_houseHold_data <- cbind(houseHold_data,gender)
final_houseHold_data

male_data <- subset(final_houseHold_data, gender == "M")
female_data <- subset(final_houseHold_data, gender == "F")
male_data
female_data
#> male_data <- subset(final_houseHold_data, gender == "M")
#> female_data <- subset(final_houseHold_data, gender == "F")
#> male_data
#shoe_size height gender
#5       10.5   70.0      M
#9       13.0   72.0      M
#11      10.5   74.5      M
#13      12.0   71.0      M
#14      10.5   71.0      M
#15      13.0   77.0      M
#16      11.5   72.0      M
#19      10.0   72.0      M
#22       8.5   67.0      M
#23      10.5   73.0      M
#25      10.5   72.0      M
#26      11.0   70.0      M
#27       9.0   69.0      M
#28      13.0   70.0      M
#> female_data
#shoe_size height gender
#1        6.5   66.0      F
#2        9.0   68.0      F
#3        8.5   64.5      F
#4        8.5   65.0      F
#6        7.0   64.0      F
#7        9.5   70.0      F
#8        9.0   71.0      F
#10       7.5   64.0      F
#12       8.5   67.0      F
#17       8.5   59.0      F
#18       5.0   62.0      F
#20       6.5   66.0      F
#21       7.5   64.0      F
#24       8.5   69.0      F

#C
mean_shoe_size <- mean(shoe_size)
mean_shoe_size
#The mean of shoe size of the all respodents is  9.410714.
mean_height <- mean(height)
mean_height
#the mean of height of the all respondents is 68.57143.
mean_shoeSize_m <- mean(male_data$shoe_size)
mean_shoeSize_m
#this is the mean of shoe size of all the male respondents 10.96429.
mean_height_m <- mean(male_data$height)
mean_height_m
#this is the mean of the height of all the male respodents 71.46429.
mean_height_F <- mean(female_data$height)
mean_height_F
#this is the mean of the height of all the female respodents 65.67857.
mean_shoeSize_F <- mean(female_data$shoe_size)
mean_shoeSize_F
#this is the mean of all the shoe size of female respodents  7.857143.

#D
#Yes theres a relationship exist between shoe size and height, with taller individuals tending to have a larger feet to support their body frame. However, this relationship is not absolute and can vay due to factors like genetics , age , weight, and gender.

#2.
months <- c("March","April","January","November","January",
            "September","October","September","November","August",
            "January","November","November","February","May","August","July","December","August","August","September","November","February","April")
factor_months_vector <- factor(months)
print(factor_months_vector)
#[1] March     April     January   November  January   September October  
#[8] September November  August    January   November  November  February 
#[15] May       August    July      December  August    August    September
#[22] November  February  April    
#11 Levels: April August December February January July March May ... September

#3
print(summary(months))
#summay of the months:
#Length     Class      Mode 
#24 character character 
print(summary(factor_months_vector))
#summary of the factor_months_vector:
#April    August  December  February   January      July     March 
#2         4         1         2         3         1         1 
#May  November   October September 
#1         5         1         3 
#Both Vectors are useful but a factor can be more informative when the order of levels matters,while a character vector is sufficient for basic frequency analysis.

#4
directions <- c("East", "West", "North")
frequency <- c(1, 4, 3)

new_order_data <- factor(directions, levels = c("East", "West", "North"))

print(new_order_data)
#East  West  North
#Levels: East West North

#5
library(readr)
#A
import_march <- read.csv(file="import_march.csv")
import_march
#B
# Students Strategy.1 Strategy2 Strategy.3
#1     Male          8        10          8
#2                   4         8          6
#3                   0         6          4
#4   Female         14         4         15
#5                  10         2         12
#6                   6         0          9
#7                  NA        NA         NA

#6

num <- readline(prompt = "choose a number from 1 to 50 :")

if (num < 1 || num > 50) {
  print("The number selected is beyond the range of 1 to 50")
} else if (num == 20) {
  print("TRUE")
} else {
  print(num)
}

#first run the readline
#> num <- readline(prompt = "choose a number from 1 to 50 :")

#then input the number you selected in the console pane
#choose a number from 1 to 50 :100

#then run the if else function
#> if (num < 1 || num > 50) {
#  +   print("The number selected is beyond the range of 1 to 50")
#  + } else if (num == 20) {
#    +   print("TRUE")
#    + } else {
#      +   print(num)
#      + }
#[1] "100"
#then it will show the output

#the output if the number you selected is 20
#> num <- readline(prompt = "choose a number from 1 to 50 :")
#choose a number from 1 to 50 :20
#> if (num < 1 || num > 50) {
#  +   print("The number selected is beyond the range of 1 to 50")
#  + } else if (num == 20) {
#    +   print("TRUE")
#    + } else {
#      +   print(num)
#      + }
#[1] "TRUE"
#>

#7.
#a.
calc_min_bills<-function(){
  price<-as.integer(readline(prompt="Price of snack(a random number divisible by 50):"))
  
  if (is.na(price)|| price %% 50 !=0){
    cat("Invalid.\n")
    return()
  }
  num_bills<-0
  bill_denominations<-c(1000,500,200,100,50)
  
  for(bill in bill_denominations){
    num_bills<-num_bills + (price %/% bill)
    price<-price %% bill
  }
  
  cat("Minimum number of bills needed:", num_bills,"\n")
}
calc_min_bills()

#8.
#a.
Name  <-c("Annie","Thea","Steve","Hanna")
Grade1<-c(85,65,75,95)
Grade2<-c(65,75,55,75)
Grade3<-c(85,90,80,100)
Grade4<-c(100,90,85,90)
cardDf<-data.frame(Name, Grade1, Grade2, Grade3, Grade4)
cardDf

#b.
student_above_90<-FALSE
for(j in 1:length(Name)){
  average_score<-c((Grade1)[j]+(Grade2)[j]+(Grade3)[j]+(Grade4)[j])/4
  if (average_score>90){
    cat(paste(Name[j], "'s average grade this semester is", round(average_score,2),"\n"))
    student_above_90<-TRUE
  }
}
if(!student_above_90){
  print("No student have an average of over 90 in the math during the semester")
}

#c.
for (test_num in 1:4){
  total_score<-Grade1 + Grade2 + Grade3 + Grade4
  average_score<-total_score/4
  if (average_score[test_num]<80){
    cat("The", test_num, "test was difficult.\n")
  }
}

#d.
for (j in 1:length(Name)){
  highest_grade<-Grade1[j]
  
  if (Grade2[j]>highest_grade){
    highest_grade<-Grade2[j]
  }
  if (Grade3[j]>highest_grade){
    highest_grade<-Grade3[j]
  }
  if (Grade4[j]>highest_grade){
    highest_grade<-Grade4[j]
  }
  
  if (highest_grade>90){
    cat(paste(Name[j], "'s highest grade this semester is", highest_grade, ".\n"))
  }
}