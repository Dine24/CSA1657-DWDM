df<-data.frame(age=c("1-5","5-15","15-20","20-50","50-80","80-110"),frequency=c(200,450,300,1500,700,44))
df$cumulative_freq<-cumsum(df$frequency)
total_frequency<-sum(df$frequency)
median_cf<-total_frequency/2
median_interval<-df$age[which(df$cumulative_freq>=median_cf)[1]]
median_interval_values<-as.numeric(strsplit(median_interval,"-")[[1]])
median_lower_limit<-median_interval_values[1]
median_upper_limit<-median_interval_values[2]
median_interval_width<-median_upper_limit-median_lower_limit
median_cumulative_frequency_before<-df$cumulative_freq[which(df$age==median_interval)-1]
median_frequency_within_interval<-df$frequency[which(df$age==median_interval)]
median<-median_lower_limit+((median_cf-median_cumulative_frequency_before)/median_frequency_within_interval)*median_interval_width
print(paste("Approximate median value:",median))