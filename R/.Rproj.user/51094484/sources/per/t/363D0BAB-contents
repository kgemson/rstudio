library(ggplot2)

histogram <- ggplot(data=iris, aes(x=Petal.Width))

histogram

histogram + geom_histogram(binwidth=0.2, aes(fill=Species))

histogram + geom_histogram(binwidth=0.2, color="black",aes(fill=Species))

histogram + geom_histogram(binwidth=0.2, color="black",aes(fill=Species)) +
  xlab("Petal Width") + ylab("Frequency") + ggtitle("Histogram of Petal Width")

histogram + geom_histogram(binwidth=0.5, color="red",aes(fill=Species)) +
  xlab("Petal Width") + ylab("Frequency") + ggtitle("Histogram of Petal Width")
