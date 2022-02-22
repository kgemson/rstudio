a = 1+2
a <- 35

mychar = "my string"

# factors - groups result sets together
myfactor <- as.factor("male")
data <- c("East","West","East","North","North","East","West",
          "West","West","East","North")
factor_data <- factor(data)
print(factor_data)

# vectors
vec1 <- c(1,2,3,4,5,6)
vec2 <- c(T,F,FALSE,TRUE,T,FALSE)
vec3 <- as.factor(c("female","male"))

# lists - can contain any type. Can be accessed using an index [i]
mylist <- list("a","b","c")
print(mylist[2])

myotherlist <- list(vec1, vec2, vec3, 20, T, mylist, list("x","y","z"), mean)

# dataframes
mydf <- data.frame(vec1,vec2) # each column must have same number of elements

mydf2 <- data.frame(col1 = vec1, col2 = vec2)
View(mydf2)

# matrices
mymatrix <- matrix(vec3,2,3) # rows, columns
View(mymatrix)

# more vectors
vec2[2]
1:6 # note - starts at 1
vec2[1:4]
vec2[-1] # gives all values except the first 
vec1[c(T,F,T,F,T,F)] # prints all values with index set to T

# more lists
myotherlist[[1]][[3]]

mynewlist <- list(name = "Dave", age = 30, list('English','Biology'))
View(mynewlist)

mynewlist$name

# more dataframes
mydf$vec1
mydf[[1]]
mydf[[1]][4:6]
mydf[1,2]
mydf[1,]
mydf[c(1,3,4),]


# functions
mynewfunc = function(val1, val2){
  result <- val1 + val2
  return(result)
}

mynewfunc(10,30)
mynewfunc(val2 = 25, val1 = 30)


# using packages
library(ggplot2) # need to install this through console first

