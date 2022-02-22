# MTCars barplot graph

data("mtcars")
help(mtcars)
head(mtcars, 6)
ncol(mtcars)
nrow(mtcars)
mtcarsgear <- table(mtcars$gear)
mtcarsgear
barplot(mtcarsgear)

barplot(mtcarsgear, main = "Car Gears", ylab = "Cars", xlab = "Gear type")
barplot(mtcarsgear, main = "Car Gears", ylab = 'Cars' ,xlab = "Gears Type", col=c('green','red','yellow'))

# Iris histograms
data("iris")
head(iris,3)
summary(iris)

# sample - sample(x, size, replace = FALSE, prob = NULL)
iris[sample(nrow(iris),10),]
nrow(iris)
sample(nrow(iris),10)

hist(iris$Petal.Length)

