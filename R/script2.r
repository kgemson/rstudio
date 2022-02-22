# Read values from tab-delimitted input file
autos_data <- read.table("D:/Users/kgems/Documents/R/autos.dat",header=TRUE,sep="\t")

# Graph autos with adjacent bars using rainbow colours
barplot(as.matrix(autos_data),main="Autos",ylab="Total",beside=TRUE, col=rainbow(5))

data("mtcars")
head(mtcars, 6)