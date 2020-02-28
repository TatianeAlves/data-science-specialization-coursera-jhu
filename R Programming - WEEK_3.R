## Starting

library(swirl)
swirl()

#|-----------------------------------------------------------------------|#
## Lapply and Sapply

 # The dataset
head(flags)
dim(flags)

class(flags)

 # Using lapply to see the class of each column.
cls_list <- lapply(flags, class)
cls_list

class(cls_list)

 # Change the list to a vector. All of the elements is a character.
as.character(cls_list)

 # Using sapply, to apply the "lapply" function
cls_vect <- sapply(flags, class)

class(cls_vect)

 # Other tests
sum(flags$orange)

flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
sapply(flag_colors, mean)

flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)

 # Using unique function
unique(c(3, 4, 5, 5, 5, 6, 6))

unique_vals <- lapply(flags, unique)
unique_vals

sapply(unique_vals,length)

sapply(flags, unique)

lapply(unique_vals, function(elem) elem[2])

#|-----------------------------------------------------------------------|#
## Vapply and Tapply

sapply(flags, unique)
vapply(flags, unique, numeric(1))
ok()

sapply(flags, class)
vapply(flags, class, character(1))

?tapply

table(flags$landmass)
table(flags$animate)

tapply(flags$animate, flags$landmass, mean)

tapply(flags$population, flags$red, summary)
tapply(flags$population, flags$landmass, summary)
