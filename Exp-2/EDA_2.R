print("Santhiya Varma S M - 23BAD103")

library(ggplot2)
library(dplyr)
library(lubridate)

setwd("C:/Users/santh/Downloads")
ecommerce_data <- read.csv("ecommerce_transactions.csv")

ggplot(ecommerce_data, aes(x = Transaction_Amount)) +
  geom_histogram(bins = 20, fill = "lightgreen", color = "darkgreen") +
  labs(title = "Histogram of Transaction Amounts",
       x = "Transaction Amount",
       y = "Frequency") +
  theme_minimal()

ggplot(ecommerce_data, aes(y = Transaction_Amount)) +
  geom_boxplot(fill = "orange", color = "black") +
  labs(title = "Boxplot of Transaction Amounts",
       y = "Transaction Amount") +
  theme_minimal()

heatmap_data <- ecommerce_data %>%
  mutate(Month = month(Transaction_Date, label = TRUE, abbr = FALSE)) %>%
  group_by(Product_Category, Month) %>%
  summarise(Total_Sales = sum(Transaction_Amount), .groups = 'drop')
ggplot(heatmap_data, aes(x = Month, y = Product_Category, fill = Total_Sales)) +
  geom_tile(color = "grey80") +
  scale_fill_gradient(low = "lightblue", high = "darkgreen") +
  labs(title = "Heatmap of Monthly Sales Intensity",
       x = "Month",
       y = "Product Category",
       fill = "Total Sales") +
  theme_minimal()
