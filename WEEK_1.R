## Install swirl
install.packages("swirl")
packageVersion("swirl")

library(swirl)

install_from_swirl("R Programming")

swirl()

#|-----------------------------------------------------------------------|#
## Basic Building Blocks

# Interactive calculator
5 + 7

# Store the result
x <- 5 + 7

# Print the result
x

# Other example
y <- x - 3

# Print the result
y

# Creating a vector
z <- c(1.1, 9, 3.14)

# About the function
?c

# Combining vectors
c(z, 555, z)

# Vectors and arithmetc expressions
z * 2 + 100

# Sqrt function
my_sqrt <- sqrt(z-1)

# Printing the result
my_sqrt

# Other test
my_div <- z/my_sqrt

# Printing the result
my_div

# Recycling example
c(1, 2, 3, 4) + c(0, 10)

# Other example
c(1, 2, 3, 4) + c(0, 10, 100)


#|-----------------------------------------------------------------------|#
## Workspace and Files

# About the directory
getwd()

# About the objects in workspace
ls()

# Examples
x <- 9

# About the files in the directory
dir()
list.files()

# See arguments in the function
args(list,list.files)

#|-----------------------------------------------------------------------|#
## List of numbers

# Create sequence, including
1:20

# Create sequence, with real numbers
pi:10

# Other example
15:1

# Using seq function
seq(1, 20)

# Using seq function with incrementation
seq(0, 10, by=0.5)

#|-----------------------------------------------------------------------|#
## Vectors

# Creating a vector with numbers
num_vect <- c(0.5, 55, -10, 6)

# Testing min
tf <- num_vect < 1

# Testing other condition
num_vect >= 6

# Creating a vector with char
my_char <- c("My", "name", "is")

# Printing
my_char

# Join the elements of a vector in a string, with paste function
paste(my_char, collapse = " ")

# Add my name
my_name <- c(my_char, "Tatiane")
paste(my_name, collapse = " ")

# Join elements
paste("Hello", "world!", sep = " ")

# Join two vectors
paste(c(1:3), c("X", "Y", "Z"), sep = "")

# Join vectors with different lenght (recycling)
paste(LETTERS, 1:4, sep = "-")

#|-----------------------------------------------------------------------|#
## Missing Values

# Creating vector with NA
x <- c(44, NA, 5, NA)

# Calculate
x * 3

# Other example
y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y, z), 100)

# Checking NA values
my_na <- is.na(my_data)
my_na

# Counting NA values
sum(my_na)
my_data

#|-----------------------------------------------------------------------|#
## Subsetting Vectors

# Getting some elements in a vector (Index vectors)
x[1:10]

# Getting NA values in a vector
x[is.na(x)]

# Getting no NA values in a vector
y <- x[!is.na(x)]
y

# Getting positive values in a vector
y[y > 0]

# Because don't use directly x with NA values, testing
x[x > 0]

# Using subset with logic expressions
x[!is.na(x) & x > 0]
x[c(3, 5, 7)]

# Negative indexes (except 2 and 10 element)
x[c(-2, -10)]
x[-c(2, 10)]

# Names of a vector
vect <- c(foo = 11, bar = 2, norf = NA)
vect

vect2 <- c(11, 2, NA)
vect2
names (vect2) <- c("foo", "bar", "norf")

identical(vect, vect2)

vect["bar"]

vect[c("foo", "bar")]

#|-----------------------------------------------------------------------|#
## Matrices and Data Frames

# Create a vector
my_vector <- 1:20
my_vector

# Using dim fuctions
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4, 5)
dim(my_vector)

attributes(my_vector)

# The matrix
my_vector
class(my_vector)

my_matrix <- my_vector

# Using matrix function
?matrix
my_matrix2 <- matrix(1:20 ,nrow = 4, ncol = 5)

identical(my_matrix, my_matrix2)

# CASE CLINIC
patients <- c("Bill", "Gina", "Kelly", "Sean")
cbind(patients, my_matrix)

# Using data frame
my_data <- data.frame(patients, my_matrix)
my_data

class(my_data)

cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data) <- cnames
my_data
