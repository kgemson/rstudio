# 1.3 import dataset
library(readr)
X100_sales_records <- read_csv("100_sales_records.csv")
View(X100_sales_records)

# 1.4 view dataset type
class(X100_sales_records)
str(X100_sales_records) #shows the structure of the dataframe

# 1.5 use '$' operator to select a column from this dataframe
barplot(X100_sales_records$'Unit Cost')
summary(X100_sales_records$'Unit Cost')

# 1.6 Use the mean() function on the Unit Price column to calculate the mean unit price, 
# use the $ extract operator in your command. 
mean(X100_sales_records$'Unit Cost')

# Use the class() function to determine the data type of the variables in the 
# Unit Price column, 
class(X100_sales_records$'Unit Cost')

# check the type of the variables in the Region column
typeof(X100_sales_records$'Region')

# use the length() function to check the number of entries in the column
length(X100_sales_records$'Region')

# 1.7 Subset the data to extract only specific parts of the dataset
# to do this we use square brackets. To get the mean for the Asia region:
mean(X100_sales_records$'Unit Price' [X100_sales_records$Region == 'Asia'])

# attach the dataset into R’s memory so we can just call the columns 
# without the full dataset
attach(X100_sales_records)
`Unit Price`
# note - not advised to use 'attach': it imports a static version of the dataset, so
# any changes are not reflected on the 'attached' version
# need to remember to 'detach' it.
detach(X100_sales_records)
detach

# try using 'with' instead
with(X100_sales_records, mean(`Unit Price`))

# 1.8 Calculate the mean sales unit price for the Europe region
mean(with(X100_sales_records, `Unit Price`[Region == 'Europe']))

# 1.9 Create a new variable with only the European sales records. 
# We need to add the comma at the end of the square brackets to tell R to include all rows
european_sales <- X100_sales_records[X100_sales_records$Region == "Europe" ,]

#  1.10 create a new variable called european sales high priority where the region is 
# equal to Europe and the Priority is H
european_sales_high_priority <- with(X100_sales_records, X100_sales_records[Region == "Europe"  & `Order Priority` == "H" , ])

# Now display rows 1 to 4 of the new variable and all columns
european_sales_high_priority[1:4, ]

# 1.11 We can use the 'table' command to convert results to a table
asian_sales_priority <- with(X100_sales_records, X100_sales_records[Region == "Asia" & `Order Priority` == "L" ,])
table(asian_sales_priority$Country)
# 1.12 Now run the barplot to visualise the result
barplot(table(asian_sales_priority$Country))

# 1.13 Create a new variable called european_sales_priority and pass all of the values of Low
# priority into this variable. Then create a table, and in the table add the country data from the new
# european_sales_priority variable. Run the plot command on this table, each item should have
# the same value. We can consider the european_sales_priority data to be a subset of the main
# data set.
attach(X100_sales_records)
european_sales_priority <- X100_sales_records[Region == "Europe"  & `Order Priority` == "L" , ]
plot(table(european_sales_priority$Country))

# 1.14 With the table function, create a table using the whole csv file but only include the country
# and item type columns in the table, then create a barplot of this table.
barplot(table(X100_sales_records[,2:3]))
barplot(table(X100_sales_records[, c("Country","Item Type")]))

barplot(table(X100_sales_records$Country,X100_sales_records$`Item Type`))