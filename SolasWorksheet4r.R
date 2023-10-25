#1.
shoe_size <- c(6.5,9.0,8.5,8.5,10.5,7.0,9.5,9.0,13.0,7.5,10.5,8.5,12.0,10.5,13.0,11.5,8.5,5.0,10.0,6.5,7.5,8.5,10.5,8.5,10.5,11.0,9.0,13.0)
height <- c(66.0,68.0,64.5,65.0,70.0,64.0,70.0,71.0,72.0,64.0,74.5,67.0,71.0,71.0,77.0,72.0,59.0,62.0,72.0,66.0,64.0,67.0,73.0,69.0,72.0,70.0,69.0,70.0)
houseHold_data <- data.frame(shoe_size,height)
houseHold_data
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
