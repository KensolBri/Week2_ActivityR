#1
#a.)the output in a is from negative 5 to postive 5 number
#b.)the value of x is from -5 to postive 1
vector <- seq(-5,5)
vector
x <- vector[1:7]
x
#2
#its output is increasing by 0.2 until it reach 3
seq(1, 3, by=0.2)
#3
#a.) the 3rd element is 22
#b.) the 2nd and 5th is 28 and 36
#c.) the output is that it printed all the age except for the 4th and 12th age
workers_age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                 18)
third_age <-workers_age[3]
third_age
second_n_fifth <- workers_age[c(2, 4)]
second_n_fifth
all_age <- workers_age[-c(4, 12)]
all_age
#4
#a.) the output is the first with 6 and the third with 9
x <- c("first"=3, "second"=6, "third"=9)
x
access_val <- x[c("first", "third")]
access_val
#5
#the output is that it changes the value of the second number in the sequence
seq_x <- seq(-3,2)
seq_x
seq_x[2] <- 0
seq_x
#6
#a.) the output is: 
#Month Price_per_liter Purchase_quantity
#1   Jan           52.50                25
#2   Feb           57.25                30
#3 March           60.00                40
#4   Apr           65.00                50
#5   May           74.25                10
#6  June           54.00                15
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
per_Liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purch_quan <- c(25, 30, 40, 50, 10, 15)
diesel_fuel <- data.frame(Month = month, Price_per_liter = per_Liter, Purchase_quantity = purch_quan)
diesel_fuel
#b.) the output is = 60.19118
average_fuel <- weighted.mean(per_Liter, purch_quan)
average_fuel
#7
#a.) the data is rivers
#b.) the output is:
#[1]    141.0000  83357.0000    591.1844
#[4]    425.0000 243908.4086    493.8708
#[7]    135.0000   3710.0000
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data
#8
