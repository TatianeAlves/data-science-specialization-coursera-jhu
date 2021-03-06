path <- "C:/Users/tatiane.alves/Google Drive/COURSERA/EspecializaÃ§Ã£o Data Science/Getting and Cleaning Data/Week 3/Pratical"

## Checking directory
getwd()

## Setting directory
setwd(path)

library(swirl)

swirl()

## Manipulating data with dplyr

mydf <- read.csv(path2csv, stringsAsFactors = FALSE)
dim(mydf)

head(mydf)

library(dplyr)
packageVersion("dplyr")

cran <- tbl_df(mydf)

rm("mydf")

cran

?select

select(cran, ip_id, package, country)

5:20

select(cran, r_arch:country)
select(cran, country:r_arch)

cran

select(cran, -time)

-5:20
-(5:20)

select(cran, -(X:size))

filter(cran, package == 'swirl')
filter(cran, r_version == '3.1.1', country == 'US')
filter(cran, country == 'IN', r_version <= '3.0.2')
filter(cran, country == 'US' | country == 'IN')
filter(cran, size > 100500, r_os == 'linux-gnu')

is.na(c(3, 5, NA, 10))
!is.na(c(3, 5, NA, 10))

filter(cran, !is.na(r_version))

cran2 <- select(cran, size:ip_id)

arrange(cran2, desc(ip_id))
arrange(cran2, package, ip_id)
arrange(cran2, country, desc(r_version), ip_id)

cran3 <- select(cran, ip_id, package, size)
cran3

mutate(cran3, size_mb = size / 2^20)
mutate(cran3, size_mb = size / 2^20, size_gb = size_mb/2^10)
mutate(cran3, correct_size = size + 1000)

summarize(cran, avg_bytes = mean(size))

## Grouping and chaining with dplyr

library(dplyr)

cran <- tbl_df(mydf)
rm("mydf")

cran

?group_by
by_package <- group_by(cran, package)
by_package

summarize(by_package, mean(size))

pack_sum
quantile(pack_sum$count, probs = 0.99)

top_counts <- filter(pack_sum, count > 679)
top_counts
View(top_counts)

top_counts_sorted <- arrange(top_counts, desc(count))
View(top_counts_sorted)

quantile(pack_sum$unique, probs = 0.99)
top_unique <- filter(pack_sum, unique > 465)
View(top_unique)

top_unique_sorted <- arrange(top_unique, desc(unique))
View(top_unique_sorted)

View(result3)
