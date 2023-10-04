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
#a
Power_Ranking <- c(1:25)
Celebrity_Name <- c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spieldberg","Howard Stern","50 Cent","Cast of the Supranos","Dan Brown","Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elthon John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr.Phil McGrew","Jay Lenon","Celine Dion","Kobe Bryant")
Pay <- c("67","90","225","110","90","332","301","41","52","88","55","44","55","40","233","34","40","47","75","25","39","45","32","40","31")
powerful_Celeb <- data.frame(Power_Ranking,Celebrity_Name, Pay)
powerful_Celeb
#b
Power_Ranking[19] <- 15
Power_Ranking
Pay[19] <- 90
Pay
#c
csv_file <-"PowerRanking.csv"
write.csv(powerful_Celeb, file = csv_file)
powerful_CelebCSV <- read.csv("PowerRanking.csv")
power_ranking <- powerful_CelebCSV[10:20,]
power_ranking
#d
#X Power_Ranking    Celebrity_Name Pay
# 10            10         Dan Brown  88
# 11            11 Bruce Springsteen  55
# 12            12      Donald Trump  44
# 13            13      Muhammad Ali  55
# 14            14    Paul McCartney  40
# 15            15      George Lucas 233
# 16            16       Elthon John  34
# 17            17   David Letterman  40
# 18            18    Phil Mickelson  47
# 19            19       J.K Rowling  75
# 20            20        Bradd Pitt  25

#e The PowerRank result was change to 10 to 20 element.
save(power_ranking, file = "Ranks.RData")
load("Ranks.RData")

#9
#a
library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna)
hotels_vienna
#b
dim(hotels_vienna) #[1]428 24
#c 
col <- colnames(hotels_vienna)
col
colnames1 <- col[c(1,6,7,8,22,24)]
colnames1
#[1] " country"             "neighbourhood"            "price"          "accomodation_type"
#[6] "rating"

#d
save(hotels_vienna, file = "new.RDATA")
new <- load("new.RDATA")
View(new)

head(hotels_vienna,6)

# country city_actual rating_count center1label center2label
#<chr>   <chr>       <chr>        <chr>        <chr>       
 # 1 Austria Vienna      36           City centre  Donauturm   
#2 Austria Vienna      189          City centre  Donauturm   
#3 Austria Vienna      53           City centre  Donauturm   
#4 Austria Vienna      55           City centre  Donauturm   
#5 Austria Vienna      33           City centre  Donauturm   
#6 Austria Vienna      25           City centre  Donauturm  

#10
vegetables <- list ("cabbage", "carrot", "spinach", " potato", "garlic", "corn","onion", "tomato", "eggplant", "cucumber")
vegetables
#a
#[[1]]
#[1] "cabbage"

#[[2]]
#[1] "carrot"

#[[3]]
#[1] "spinach"

#[[4]]
#[1] " potato"

#[[5]]
#[1] "garlic"

#[[6]]
#[1] "corn"

#[[7]]
#[1] "onion"

#[[8]]
#[1] "tomato"

#[[9]]
#[1] "eggplant"

#[[10]]
#[1] "cucumber"

#b added 2 additional vegetable after the last vegetables in the list.
addVegetables <- c(vegetables, "mushroom", "ginger")
addVegetables
#c added 4 additional vegetables after index 5
addVegetables4 <- append(addVegetables,c("lettuce","zucchini", "radish","bell papper"),after = 5)
addVegetables4
num_vegetables <- length(addVegetables4)
num_vegetables

#> addVegetables <- c(vegetables, "mushroom", "ginger")
#> addVegetables
#[[1]]
#[1] "cabbage"

#[[2]]
#[1] "carrot"

#[[3]]
#[1] "spinach"

#[[4]]
#[1] " potato"

#[[5]]
#[1] "garlic"

#[[6]]
#[1] "corn"

#[[7]]
#[1] "onion"

#[[8]]
#[1] "tomato"

#[[9]]
#[1] "eggplant"

#[[10]]
#[1] "cucumber"


#[[11]]
#[1] "mushroom"

#[[12]]
#[1] "ginger"

#> addVegetables4 <- append(addVegetables,c("lettuc","zucchini", "radish","bell papper"),after = 5)
#> addVegetables4
#[[1]]
#[1] "cabbage"

#[[2]]
#[1] "carrot"

#[[3]]
#[1] "spinach"

#[[4]]
#[1] " potato"

#[[5]]
#[1] "garlic"

#[[6]]
#[1] "lettuc"

#[[7]]
#[1] "zucchini"

#[[8]]
#[1] "radish"

#[[9]]
#[1] "bell papper"

#[[10]]
#[1] "corn"

#[[11]]
#[1] "onion"

#[[12]]
#[1] "tomato"

#[[13]]
#[1] "eggplant"

#[[14]]
#[1] "cucumber"

#[[15]]
#[1] "mushroom"

#[[16]]
#[1] "ginger"

#> num_vegetables <- length(addVegetables4)
# num_vegetables
#[1] 16
addVegetables5 <- addVegetables4[-c(5,10,15)]
addVegetables5

num_addVegetables5 <- length(addVegetables5)
num_addVegetables5
#d
#> addVegetables5 <- addVegetables4[-c(5,10,15)]
#> addVegetables5
#[[1]]
#[1] "cabbage"

#[[2]]
#[1] "carrot"

#[[3]]
#[1] "spinach"

#[[4]]
#[1] " potato"


#[[5]]
#[1] "lettuc"

#[[6]]
#[1] "zucchini"

#[[7]]
#[1] "radish"

#[[8]]
#[1] "bell papper"

#[[9]]
#[1] "onion"

#[[10]]
#[1] "tomato"

#[[11]]
#[1] "eggplant"

#[[12]]
#[1] "cucumber"

#[[13]]
#[1] "ginger"

#> 
 # > num_addVegetables5 <- length(addVegetables5)
#> num_addVegetables5
#[1] 13