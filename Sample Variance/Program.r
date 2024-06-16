preferences <- matrix(c(22, 28, 10, 20, 40, 40, 18, 35, 30), ncol = 3, byrow = TRUE)
rownames(preferences) <- c("5-6 years", "7-8 years", "9-10 years")
colnames(preferences) <- c("A", "B", "C")
cov_bc <- cov(preferences[, "B"], preferences[, "C"])
print("Sample Covariance:")
print(cov_bc)

