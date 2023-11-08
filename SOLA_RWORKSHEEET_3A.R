#1
#a
elevenLetters <- LETTERS[1:11]
elevenLetters
#[1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K"
#b
oddNumLetters <- LETTERS[1:26 %% 2 == 1]
oddNumLetters
#[1] "A" "C" "E" "G" "I" "K" "M" "O" "Q" "S" "U" "W" "Y"
#c
vowels <- LETTERS[c(1,5,9,15,21)]
vowels
#[1] "A" "E" "I" "O" "U"
#d
smolLetters <- tail(letters,5)
smolLetters
#[1] "v" "w" "x" "y" "z"
#e
peepLetter <- letters[15:24]
peepLetter
#[1] "o" "p" "q" "r" "s" "t" "u" "v" "w" "x"

#2
#a
city <- c("Tugue-garao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city
#[1] "Tugue-garao City" "Manila"           "Iloilo City"     
#[4] "Tacloban"         "Samal Island"     "Davao City"
#b
temp <- c(42, 39, 34, 34, 30, 27)
temp
#[1] 42 39 34 34 30 27
#c
cityTemp <- data.frame(city,temp)
cityTemp
#              city temp
#1 Tugue-garao City   42
#2           Manila   39
#3      Iloilo City   34
#4         Tacloban   34
#5     Samal Island   30
#6       Davao City   27

#d
colnames(cityTemp) <- c("City", "Temperature")
col_names <- colnames(cityTemp)
col_names
#[1] "City"        "Temperature"
#e
str(cityTemp)
#'data.frame':	6 obs. of  2 variables:
#  $ City       : chr  "Tugue-garao City" "Manila" "Iloilo City" "Tacloban" ...
#$ Temperature: num  42 39 34 34 30 27
#f
row_3 <- cityTemp[3,]
row_3
#         City Temperature
#3 Iloilo City          34
row_4 <- cityTemp[4,]
row_4
#      City Temperature
#4 Tacloban          34
#g
max(cityTemp$City)
#[1] "Tugue-garao City"
min(cityTemp$City)
#[1] "Davao City"

#2 Using Matrices

#a
orgMatrix <- matrix(data = c(1:8, 11:14), nrow = 3 , ncol = 4)
orgMatrix
#     [,1] [,2] [,3] [,4]
#[1,]    1    4    7   12
#[2,]    2    5    8   13
#[3,]    3    6   11   14
#b
orgMatrix_new <- orgMatrix * 2
orgMatrix_new
#     [,1] [,2] [,3] [,4]
#[1,]    2    8   14   24
#[2,]    4   10   16   26
#[3,]    6   12   22   28
#C
row_2 <- orgMatrix_new[2,]
row_2
#[1]  4 10 16 26
#D
select_val <- orgMatrix_new[c(1,2), c(3,4)]
select_val
#     [,1] [,2]
#[1,]   14   24
#[2,]   16   26
#E
select_val2 <- orgMatrix_new[3, c(2,3)]
select_val2
#[1] 12 22
#F
col <- orgMatrix_new[,4]
col
#[1] 24 26 28
#G
rownames(orgMatrix_new) <- c("isa", "duha", "tatlo")
colnames(orgMatrix_new) <- c("uno", "dos", "tres", "quatro")
orgMatrix_new
#      uno dos tres quatro
#isa     2   8   14     24
#duha    4  10   16     26
#tatlo   6  12   22     28
#H
dim(orgMatrix) <- c(6,2)
orgMatrix
#[,1] [,2]
#[1,]    1    7
#[2,]    2    8
#[3,]    3   11
#[4,]    4   12
#[5,]    5   13
#[6,]    6   14
#USING ARRAYS
#3
#A
numeric_value <- c(1, 2, 3, 6, 7 , 8, 9, 0, 3, 4, 5, 1)
array_data <- array(numeric_value, dim = c(2,4,6))
array_data
#, , 1
#
#[,1] [,2] [,3] [,4]
#[1,]    1    3    7    9
#[2,]    2    6    8    0
#
#, , 2
#
#[,1] [,2] [,3] [,4]
#[1,]    3    5    1    3
#[2,]    4    1    2    6
#
#, , 3
#
#[,1] [,2] [,3] [,4]
#[1,]    7    9    3    5
#[2,]    8    0    4    1
#
#, , 4
#
#[,1] [,2] [,3] [,4]
#[1,]    1    3    7    9
#[2,]    2    6    8    0
#
#, , 5
#
#[,1] [,2] [,3] [,4]
#[1,]    3    5    1    3
#[2,]    4    1    2    6
#
#, , 6
#
#[,1] [,2] [,3] [,4]
#[1,]    7    9    3    5
#[2,]    8    0    4    1

#B
dim(array_data)
#[1] 2 4 6

#C
row_names <- letters [1:2]
col_names <- LETTERS [1:4]
third_nim_names <- c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array",
                     "1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array")
dimnames(array_data) <- list(row_names, col_names, third_nim_names)
array_data
#, , 1st-Dimensional Array
#
#A B C D
#a 1 3 7 9
#b 2 6 8 0
#
#, , 2nd-Dimensional Array
#
#A B C D
#a 3 5 1 3
#b 4 1 2 6
#
#, , 3rd-Dimensional Array
#
#A B C D
#a 7 9 3 5
#b 8 0 4 1
#
#, , 1st-Dimensional Array
#
#A B C D
#a 1 3 7 9
#b 2 6 8 0
#
#, , 2nd-Dimensional Array
#
#A B C D
#a 3 5 1 3
#b 4 1 2 6

#, , 3rd-Dimensional Array
#
#A B C D
#a 7 9 3 5
#b 8 0 4 1
