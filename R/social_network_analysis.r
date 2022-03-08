## Load package
library(igraph)
library(readr)
library(extrafont)

# set working directory
setwd("D:\\Users\\kgems\\Documents\\NPA\\R\\") # windows

movies <- read_csv("movies.csv")
actors <- read_csv("actors.csv")

head(movies,16)
head(actors)

actorNetwork <- graph_from_data_frame(d=movies, vertices=actors,directed=F)


E(actorNetwork)$color <- ifelse(E(actorNetwork)$Movie == "Forest Gump","green",
                                ifelse(E(actorNetwork)$Movie == "Apollo 13","black","orange"))

plot(actorNetwork)
#help("plot")

loadfonts(device = "win")
plot(actorNetwork, vertex.color="Red", vertex.frame.color = "Blue", 
     vertex.size = 19, vertex.label.family = "Arial", edge.width=2, edge.lty=2)

