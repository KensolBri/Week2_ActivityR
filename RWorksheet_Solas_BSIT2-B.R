#1
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20,
         57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
length(age)
#2
reciprocal_age <- 1/age
reciprocal_age
#3
#the new age has been added to the vector age
new_age <-c(age, 69, age)
new_age
#4
sort(age)
#5
min(age)
max(age)
#6
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)
length(data)
#7
doubled_data <- data * 2
doubled_data
#8
int <- seq(1,100)
int

num <- seq(20,60)
num

mean <- seq(20,60)

mean_seq <- mean(mean)

mean_seq

sum <- seq(51,91)

sum_seq <- sum(sum)

sum_seq

inte <- seq(1,1000)

inte10 <- inte[1:10]

inte_max <- max(inte10)

inte_max
#9
filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
#ERROR! Error in attr(data, "tsp") <- c(start, end, frequency) : object is not a matrix Calls: filter -> as.ts -> as.ts.default -> ts Execution halted

#10
integ_seq <- seq(100,1)

integ_seq
#11
num <- 1:24
num 
multiples <- num[num %% 3 == 0 | num %% 5 == 0]
multiples
multiples_sum <- sum(multiples)
multiples_sum
length(multiples)
#12
#The statement is error"Error: unexpected '}' in "{ x <- 0+ x + 5 + }"Execution halted"
{ x <- 0+ x + 5 + }
#13
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
x2 <- score[2]
x3 <- score[3]
x2
x3
#14
#the "-999" replace/took the place of NA and the result output will become ""[1]    1    2 -999  4  -999    6    7
a = c(1,2,NA,4,NA,6,7)
print(a,na.print="-999")
#15
#the output is "My name is Brian Kenneth Solas and I am 19 years old"
name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)