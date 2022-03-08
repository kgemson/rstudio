# Create R WordCloud Script - install packages
##install.packages("devtools") # for dev tools
##install.packages("tm") # for text mining
##install.packages("SnowballC") # for text stemming
##install.packages("wordcloud") # word-cloud generator
##install.packages("wordcloud2") # word-cloud generator
##install.packages("RColorBrewer") # color palettes

# Load
library("tm")
library("SnowballC")
library("wordcloud")
library("wordcloud2")
library("RColorBrewer")
        
  text <- readLines("D:\\users\\kgems\\Documents\\NPA\\r\\starwars.txt")
  docs <- Corpus(VectorSource(text))
  # Convert the text to lowercase
  docs <- tm_map(docs, content_transformer(tolower))
  # Remove numbers
  docs <- tm_map(docs, removeNumbers)
  
  # specify your to remove stop words as a character vector
  #docs <- tm_map(docs, removeWords, c("the", "this", "said", "like", "now", "went","come", "and", "Was", "for", "with", "from", "are", "which", "has", "Were", "that"))
  docs <- tm_map(docs, removeWords, stopwords("english"))
  
  # Remove punctuation
  docs <- tm_map(docs, removePunctuation)
  # Eliminate extra white spaces
  docs <- tm_map(docs, stripWhitespace)
  
  # Text stemming
  #docs <- tm_map(docs, stemDocument)
  dtm <- TermDocumentMatrix(docs)
  m <- as.matrix(dtm)
  v <- sort(rowSums(m),decreasing=TRUE)
  d <- data.frame(word = names(v),freq=v)
  head(d, 10)
  set.seed(1234)
  
  
  findFreqTerms(dtm, lowfreq = 4)
  barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
          col ="lightgreen", main ="Most frequent words",
          ylab = "Word frequencies")
  
  # Example 1 - Wordcloud 2 with demo word collection
  #wordcloud2(demoFreq, color = "random-light", backgroundColor = "grey")
  
  # Example 2 - Basic cloud with our words
  #wordcloud(words = d$word, rot.per=.5, max.words = 100,min.freq = 5, scale=c(2,.25))
  
  # Example 3 - Improved cloud with colour palette
  #wordcloud(words = d$word, freq = d$freq, min.freq = 5,max.words=120, random.order=FALSE, rot.per=0.5,colors=brewer.pal(8, "Dark2"))
  wordcloud2(data=d, size=1.6, color='random-dark', backgroundColor = "black")

  