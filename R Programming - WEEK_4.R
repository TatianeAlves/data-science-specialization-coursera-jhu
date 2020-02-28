## Starting

library(swirl)
swirl()

#|-----------------------------------------------------------------------|#
## Looking at Data

# The dataset
ls()

# 1. Checking the class
class(plants)

# 2. Checking he dimentions
dim(plants)

nrow(plants)
ncol(plants)

# 3. Checking the memory that the data set is occupying
object.size(plants)

# 4. Cheking the names and the values, top and the bottom of the data
names(plants)

head(plants)
head(plants, 10)

tail(plants, 15)

# 5. Checking the summary
summary(plants)

# 6. Checking the occurrence
table(plants$Active_Growth_Period)

# 7. Using the str function
str(plants)

#|-----------------------------------------------------------------------|#
## Silumation

?sample

sample(1:6, 4, replace = TRUE)

sample(1:6, 4, replace = TRUE)

sample(1:20, 10)

# Using sample to re-organize a vector
LETTERS

sample(LETTERS)

# Assign probs to sample

flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

flips

sum(flips)

# Using rbinom function

?rbinom

rbinom(1, size = 100, prob = 0.7)

flips2 <- rbinom(100, size = 1, prob = 0.7)

flips2

sum(flips2)

# Using rnorm function

?rnorm

rnorm(10)

rnorm(10, mean = 100, sd = 25)

# Using rpois function

?rpois

rpois(5, lambda = 10)

my_pois <- replicate(100, rpois(5, 10))

my_pois

cm <- colMeans(my_pois)

hist(cm)

#|-----------------------------------------------------------------------|#
##  Base Graphics

data(cars)
?cars
head(cars)
lot(cars)

?plot
plot(x = cars$speed, y = cars$dist)
plot(x = cars$dist, y = cars$speed)

plot(x = cars$speed, y = cars$dist, xlab = "Speed")

plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")

plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")

plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")

plot(cars, col = 2)

plot(cars, xlim = c(10,15))

plot(cars, pch = 2)

data(mtcars)
?boxplot

boxplot(mpg ~ cyl, data = mtcars)

hist(mtcars$mpg)
