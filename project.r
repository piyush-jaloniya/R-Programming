data <- read.csv("D:/archive (1)/TOP 100 IMDB MOVIES.csv", header = TRUE, sep = ",")

# View the first few rows of the dataset
head(data)

# View the structure of the dataset
str(data)

# Summary statistics of the dataset
summary(data)

# Get the dimensions of the dataset
dim(data)

# View the column names
colnames(data)

# Check for missing values in each column
colSums(is.na(data))

# Histogram for the IMDb rating
hist(data$rating, main = "Histogram of IMDb Ratings", xlab = "Rating")

# Histogram for the release year
hist(data$year, main = "Histogram of Release Year", xlab = "Year")

# Boxplot for IMDb ratings
boxplot(data$rating, main = "Boxplot of IMDb Ratings", ylab = "Rating")

# Boxplot for movie duration
boxplot(data$rank, main = "Boxplot of Movie Rank", ylab = "Rank")

# Identify outliers in the IMDb ratings
boxplot.stats(data$rating)$out

# Identify outliers in the movie runtime
boxplot.stats(data$rank)$out

# Scatter plot between year and IMDb rating
plot(data$year, data$rating, main = "Year vs IMDb Rating", xlab = "Year", ylab = "Rating")

# Scatter plot between runtime and IMDb rating
plot(data$rank, data$rating, main = "Rank vs IMDb Rating", xlab = "Rank", ylab = "Rating")

# Correlation between year and rating
cor(data$year, data$rating, use = "complete.obs")

# Correlation between runtime and rating
cor(data$rank, data$rating, use = "complete.obs")
