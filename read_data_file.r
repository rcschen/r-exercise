# Goal: To read in a simple data file, and look around it's contents.

# Suppose you have a file "x.data" which looks like this:
#        1997,3.1,4
#        1998,7.2,19
#        1999,1.7,2
#        2000,1.1,13
# To read it in --

A <- read.table("D:\\study\\r\\r-exercise\\data\\x.data", sep=",",
                col.names=c("year", "my1", "my2"))
A
nrow(A)                                 # Count the rows in A

summary(A$year)                         # The column "year" in data frame A
                                        # is accessed as A$year
A$newcol <- A$my1 + A$my2               # Makes a new column in A
summary(A)

newvar <- A$my1 - A$my2                 # Makes a new R object "newvar"
A$my1 <- NULL                           # Removes the column "my1"

# You might find these useful, to "look around" a dataset --
A
print("==str==")
str(A)
print("==summary==")

summary(A)
library(Hmisc)          # This requires that you've installed the Hmisc packagei
contents(A)
describe(A) 
