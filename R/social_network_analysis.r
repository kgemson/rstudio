## Load package
library(igraph)
library(readr)
library(extrafont)
library(remotes)

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

# steps required to access fonts
# - include library(extrafont)
# - include library(remotes) (may need to install.packages on both)
# then run 'install.version' as below
# then font_import()
# then 'load_fonts'
install_version("Rttf2pt1", version = "1.3.8")
font_import()
loadfonts(device = "win")

plot(actorNetwork, vertex.color="Red", vertex.frame.color = "Blue", 
     vertex.size = 19, vertex.label.family = "Poor Richard", edge.width=2, edge.lty=2)

