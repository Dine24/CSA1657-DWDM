age<-c(1,2,-2,0,1,8,3,-3,2,4,-2,2)
mean_age<-mean(age)
median_age<-median(age)
print(paste("Mean:",mean_age))
print(paste("Median:",median_age))
mode_age <- as.numeric(names(sort(table(age), decreasing = TRUE)[1]))
num_modes <- length(table(age))
modality <- ifelse(num_modes == 1, "Unimodal",
                   ifelse(num_modes == 2, "Bimodal",
                          ifelse(num_modes == 3, "Trimodal",
                                 "Multimodal")))

print(paste("Mode:", mode_age))
print(paste("Modality:", modality))
midrange_age <- (max(age) + min(age)) / 2

print(paste("Midrange:", midrange_age))
q1 <- quantile(age, 0.25)
q3 <- quantile(age, 0.75)

print(paste("First Quartile (Q1):", q1))
print(paste("Third Quartile (Q3):", q3))
