library(readr)
df_group <- read_csv("group_scores.csv")
View(df_group)

# 2.3 - double square brackets, i.e. [[ ]], can be used to directly access columns
# used to run mean, median, range, sum, max, min
mean(df_group[[2]])
mean(df_group[[3]])

# 2.4 - to get mean of rows, we need to convert to numeric values where possible. Any non-numeric converted to 'NA' 
my_group_data = (as.numeric(df_group[1,]))

# to ignore 'NA' values from output, use 'rm' parameter
sum(my_group_data, na.rm = TRUE)

# or, remove them from dataset completely
my_group_data_new <- my_group_data[!is.na(my_group_data)]

# 3.1 Run the summary() function on my_group_data_new,then create a barplot of my_group_data_new. 
# Change the colour of the chart:
barplot(my_group_data_new, col="blue")

# 3.2 - column names are element[0] within the dataframe
df_group[0 ,]

# 3.3 We can add this to the barplot command with the names.arg argument inside the barplot function.
# This fails as we have excluded a column from the output
barplot(my_group_data_new, names.arg = df_group[0 ,])

# 3.4 - first pass the column names to a vector, then use view to look at the contents:
my_name_vector = df_group[0 ,]
View(my_name_vector)

my_name_vector[2]
my_name_vector[3]
my_name_vector[2:4]

# 3.6 Use 'colnames' function instead
barplot(my_group_data_new, col="gold1",names.arg=colnames(df_group[-1]))

df_group[-1,]
    