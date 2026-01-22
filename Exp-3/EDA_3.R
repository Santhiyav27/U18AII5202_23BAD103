print("Santhiya Varma S M - 23BAD103")

library(ggplot2)
library(GGally)

setwd("C:/Users/santh/Downloads")
health_data <- read.csv("healthcare_data.csv")

health_data$Age_Group <- cut(
  health_data$Age,
  breaks = c(0, 30, 50, 100),
  labels = c("Young", "Middle-aged", "Senior")
)

ggpairs(health_data,  
        columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"),
        aes(color = Age_Group),
        
        upper = list(continuous = wrap("points", alpha = 0.6)),
        lower = list(continuous = wrap("points", alpha = 0.6)),
        diag = list(continuous = "barDiag"),
        
        title = "Scatter Plot Matrix - Multivariate Analysis",
        legend = 1,
        axisLabels = "show",
        switch = "both") +
  theme_bw() +
  theme(
    strip.placement = "outside",
    legend.position = "bottom",
    plot.title = element_text(hjust = 0.5, face = "bold")
  )

numeric_cols <- health_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")]

cor_matrix <- cor(numeric_cols, use = "complete.obs")

print("--- Correlation Matrix Results ---")
print(round(cor_matrix, 2))
