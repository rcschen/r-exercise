print("hello")
# Goals: A first look at R objects - vectors, lists, matrices, data frames.

# To make vectors "x" "y" "year" and "names"
print("=======vector======")
x <- c(2,3,7,9)
y <- c(9,7,3,2)
year <- 1990:1993
names <- c("payal", "shraddha", "kritika", "itida")
print(x)
print(y)
print(year)
print(names)
print('--use sequence--')
print(seq(5,9,by=0.4))
cat('get vector of index 1,3,4 in year:',year[c(1,3,4)],'\n')
print('')
print("=======list========")
# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2), list("green",12.3))
# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
# Show the list.
print(list_data)

# Accessing the 1st and last elements of y --
cat('1st of y',y[1],'\n')
cat('last of y',y[length(y)],'\n')
print(paste0('1st of y',y[1]))
print(paste0('last of y',y[length(y)]))

# To make a list "person" --
person <- list(name='payal', x=2, y=9, year=1990)
person

# Accessing things inside a list --
cat('access name of person :', person$name,'\n')
cat('access x of person :',person$x,'\n')

# To make a matrix, pasting together the columns "year" "x" and "y"
# The verb cbind() stands for "column bind"
print("===cbind===")
cbind(year,x,y)
print("===rbind===")
rbind(year,x,y)
# To make a "data frame", which is a list of vectors of the same length --
D <- data.frame(names,x,y,year)
print(D)
# Accessing one of these vectors
D$names[1]
print(paste0('access names of D:',D$names,'\n'))
# Accessing the last element of this vector
cat('the last element of names:',D$names[length(D$names)],'\n')
# Or equally,
