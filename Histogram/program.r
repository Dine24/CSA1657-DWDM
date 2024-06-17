# Given list of prices
prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18)

# Mean
mean_value <- mean(prices)
cat("Mean:", mean_value, "\n")

# Median
median_value <- median(prices)
cat("Median:", median_value, "\n")

# Mode function (since there's no built-in function for mode in R)
mode_value <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}
mode_result <- mode_value(prices)
cat("Mode:", mode_result, "\n")

# Range
range_value <- range(prices)
cat("Range:", range_value, "\n")

# Standard Deviation
sd_value <- sd(prices)
cat("Standard Deviation:", sd_value, "\n")

# Data Smoothing using Moving Average
moving_average <- function(x, n=3) {
  filter <- rep(1/n, n)
  stats::filter(x, filter, sides=2)
}

smoothed_prices <- moving_average(prices, n=3)
cat("Smoothed Prices:", smoothed_prices, "\n")

# Plotting the original and smoothed data
plot(prices, type='o', col='blue', ylim=range(c(prices, smoothed_prices), na.rm = TRUE), ylab='Prices', xlab='Index')
lines(smoothed_prices, col='red', type='o')
legend("topright", legend=c("Original Prices", "Smoothed Prices"), col=c("blue", "red"), lty=1)

# Histogram
hist(prices, breaks=10, col='gray', main='Histogram of Prices', xlab='Prices', border='black')
