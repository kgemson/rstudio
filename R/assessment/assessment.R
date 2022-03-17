library(readr)
imf_data <- read_csv("imf_inflation_rate_consumer_prices_percentage.csv")
str(imf_data)

dim(imf_data)

summary(imf_data)


# Average inflation for all locations in 2003 and in 1993
c(mean(imf_data$`1993`), mean(imf_data$`2003`))

# Inflation figure for Nicaragua in 1987
imf_data$`1987`[imf_data$...1 == "Nicaragua"]

with (imf_data, `1987`[...1 == "Nicaragua"])

# average inflation for all years of data for Australia, Colombia, Finland
my_australia_data <- as.numeric(imf_data[imf_data$...1 == "Australia",])
mean(my_australia_data, na.rm = TRUE)

mean(as.numeric(imf_data[imf_data$...1 == "Australia",]), na.rm = TRUE)
mean(as.numeric(imf_data[imf_data$...1 == "Colombia",]), na.rm = TRUE)
mean(as.numeric(imf_data[imf_data$...1 == "Finland",]), na.rm = TRUE)

ncol(imf_data)
nrow(imf_data)

# tabulate data for Spain - convert to matrix, exclude first column
# use first row of matrix as input (otherwise colours don't work)
# use colnames as x-axis ticks 
spain_cpi <- as.matrix(imf_data[imf_data$...1 == "Spain",-1])
barplot(spain_cpi[1,], 
        names.arg = c(colnames(spain_cpi)),
        main = "IMF Inflation Rate Consumer Price Percentage - Spain",
        xlab = "Year", 
        ylab = "Price increase (%)",
        col=c(1:7)
)