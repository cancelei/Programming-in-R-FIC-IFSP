# Média de cotações

dates <- c("2023-09-01", "2023-09-02", "2023-09-03", "2023-09-04", "2023-09-05", 
           "2023-09-06", "2023-09-07", "2023-09-08", "2023-09-09", "2023-09-10", 
           "2023-09-11", "2023-09-12")

quotations <- c(5.20, 5.22, 5.19, 5.23, 5.21, 5.25, 5.18, 5.24, 5.22, 5.21, 5.20, 5.23)

# Ensure the dates are in Date format
dates <- as.Date(dates, format="%Y-%m-%d")

# Calculate the average of the quotations
average_quotation <- mean(quotations)

# Find the dates with the minimum and maximum quotations
min_date <- dates[which.min(quotations)]
max_date <- dates[which.max(quotations)]

# Print the results
cat("A média das cotações é:", round(average_quotation, 2), "\n")
cat("O menor valor foi em:", as.character(min_date), "com valor de:", min(quotations), "\n")
cat("O maior valor foi em:", as.character(max_date), "com valor de:", max(quotations), "\n")
