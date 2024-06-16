# Load necessary libraries
library(readr)

# Load the dataset
diabetes_data <- read_csv("diabetes.csv")

# Display the structure of the dataset
str(diabetes_data)

# Display summary statistics
summary(diabetes_data)

# Load necessary libraries
library(ggplot2)

# Linear regression model
linear_model <- lm(Outcome ~ Age, data = diabetes_data)

# Summary of the linear regression model
summary(linear_model)

# Scatter plot with regression line
ggplot(diabetes_data, aes(x = Age, y = Outcome)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Linear Regression: Diabetes Trend by Age")

# Multiple regression model
multiple_model <- lm(Outcome ~ Age + BloodPressure + BMI, data = diabetes_data)

# Summary of the multiple regression model
summary(multiple_model)
