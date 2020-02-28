## Starting

library(swirl)
swirl()

#|-----------------------------------------------------------------------|#
## Logic

# Basic tests
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7

6 < 7
10 <= 10

5 != 7
!(5 == 7)

TRUE & TRUE
FALSE & FALSE

TRUE & c(TRUE, FALSE, FALSE) # It looks like c(TRUE, TRUE, TRUE) & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE) # The TRUE is evaluated only with the first member in the vector

TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)

# AND is calculated always before OR
5 > 8 || 6 != 8 && 4 > 3.9
5 > 8 || TRUE && TRUE
5 > 8 || TRUE
FALSE || TRUE # Since the right operand of this expression is TRUE the entire expression evaluates to TRUE.

# Testing
TRUE && FALSE || 9 >= 4 && 3 < 6
FALSE || TRUE && TRUE
FALSE || TRUE
TRUE

# Other test
FALSE || TRUE && 6 != 4 || 9 > 4
FALSE || TRUE && TRUE || 9 > 4
FALSE || TRUE || TRUE
TRUE

!(8 > 4) || 5 == 5.0 && 7.8 >= 7.79
!(8 > 4) || TRUE && TRUE
FALSE || TRUE
TRUE

6 >= -9 && !(6 > 7) && !(!TRUE)
TRUE && TRUE && TRUE
TRUE

FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
FALSE && TRUE || 7 >= 8 || 50 <= 49.5
FALSE && TRUE || FALSE || FALSE
TRUE || FALSE || FALSE
FALSE || FALSE
FALSE

# Using isTRUE function
isTRUE(6 > 4)
isTRUE(3)
isTRUE(NA)
!isTRUE(4 < 3)
isTRUE(!TRUE)
!isTRUE(8 != 5)

# Using identical function
identical("twins", "twins")

# Using xor function
xor(5 == 6, !FALSE)

xor(identical(xor, 'xor'), 7 == 7.0) # FALSE, TRUE == TRUE
xor(!!TRUE, !!FALSE)                 # TRUE, FALSE == TRUE
xor(4 >= 9, 8 != 8.0)                # FALSE, FALSE == FALSE
xor(!isTRUE(TRUE), 6 > -1)           # FALSE, TRUE == TRUE

# Some questions (whitch, any and all functions)
ints <- sample(10)
ints
ints > 5

which(ints > 7)
which(ints <= 2)

any(ints < 0)
all(ints > 0)

#|-----------------------------------------------------------------------|#
## Functions

# Testing
Sys.Date()

mean(c(2, 4, 5))

# Testing my first function
boring_function("My first function!")
boring_function

# Testing mean function
my_mean(c(4, 5, 10))

# Testing remainder function
remainder(5)
remainder(11, 5)
remainder(divisor = 11, num = 5)

remainder(4, div = 2)

args(remainder)

# Testing evaluate function
evaluate(sd, c(1.4, 3.6, 7.9, 8.8)) 

# Anonimous function
evaluate(function(x){x+1}, 6)

evaluate(function(x){x[1]}, c(8, 4, 0))

evaluate(function(x){x[length(x)]}, c(8, 4, 0))

# Using paste function
?paste

paste("Programming", "is", "fun!")

telegram("I'm leaning R language programming!")

mad_libs("house", "great", "window")

"I" %p% "love" %p% "R!"

#|-----------------------------------------------------------------------|#
## Dates and Times

# Testing dates
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1

d2 <- as.Date("1969-01-01")
unclass(d2)

# Testing times and access just part of the time
t1 <- Sys.time()
t1
class(t1)
unclass(t1)

t2 <- as.POSIXlt(Sys.time())
class(t2)
t2
unclass(t2)
str(unclass(t2))
t2$min

# Using functions useful to data and times
weekdays(d1)
months(t1)
quarters(t2)

# Formats of the data and times
t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)

# Operations with dates and times
Sys.time() > t1
Sys.time() - t1

difftime(Sys.time(), t1, units = "days")
