# Install the necessary libraries
setwd("Aula 23102023")

library(lubridate)
suppressPackageStartupMessages(library(tidyverse))

# Import the data
data <- read.csv("exemplo_viagens.csv", sep=";", stringsAsFactors=FALSE)

# View the structure of the data
str(data)

# Summary of the data
summary(data)

# Remove the 'X' column
data <- data %>% select(-X)

# Plot distribution of travel types
data %>%
  group_by(`Tipo.Viagem`) %>%
  summarize(count = n()) %>%
  ggplot(aes(x = `Tipo.Viagem`, y = count)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Distribution of Travel Types", x = "Type of Travel", y = "Count")

# Plot distribution of travel status
data %>%
  group_by(Situação) %>%
  summarize(count = n()) %>%
  ggplot(aes(x = Situação, y = count)) +
  geom_bar(stat = "identity", fill = "coral") +
  labs(title = "Distribution of Travel Status", x = "Status", y = "Count")

# Create a temporary column with cleaned 'Valor.Total' values
data$temp_cleaned_values <- gsub("R\\$ ", "", data$`Valor.Total`)
data$temp_cleaned_values <- gsub(",", ".", data$temp_cleaned_values)

# Identify rows with problematic 'Valor.Total' values
problematic_rows <- !grepl("^[0-9]+\\.\\d{2}$", data$temp_cleaned_values)
problematic_values <- data[problematic_rows, ]$`Valor.Total`

# Print the problematic values
print(problematic_values)

# Remove the temporary column
data$temp_cleaned_values <- NULL

# Convert "Valor Total" to numeric
data$`Valor.Total` <- as.numeric(gsub(",", ".", gsub("R\\$ ", "", data$`Valor.Total`)))

# Re-check NAs
na_count <- sum(is.na(data$`Valor.Total`))
print(paste("Number of NA values after conversion:", na_count))

# Plotting distribution of travel expenses (filtering out NAs)
data_filtered <- data %>% filter(!is.na(`Valor.Total`))
p <- ggplot(data_filtered, aes(x = `Valor.Total`)) +
  geom_histogram(fill = "blue", bins = 50, alpha = 0.7) +
  labs(title = "Distribution of Travel Expenses", x = "Expense Amount", y = "Count")
print(p)

# Filter the data to only include travels with "Avaré/SP" as a destination
avare_travels <- data_filtered %>% filter(grepl("Avaré/SP", Destinos, ignore.case = TRUE))

# Plotting distribution of travel expenses to "Avaré/SP"
p_avare <- ggplot(avare_travels, aes(x = `Valor.Total`)) +
  geom_histogram(fill = "skyblue", bins = 20, alpha = 0.7) +
  labs(title = "Distribution of Travel Expenses to 'Avaré/SP'", x = "Expense Amount (R$)", y = "Count")
print(p_avare)

# Save the plot to an image file
ggsave("plot_avare.png", plot = p_avare)
