print("Santhiya Varma S M - 23BAD103")

library(ggplot2)
library(dplyr)

setwd("C:/Users/student/Downloads")
traffic_data <- read.csv("traffic_accidents.csv")

plot_data <- traffic_data %>%
  group_by(Location, Accident_Type, Severity) %>%
  summarise(Frequency = n(), .groups = "drop")

plot_data$Severity <- factor(
  plot_data$Severity,
  levels = c("Minor", "Major", "Fatal")
)

ggplot(plot_data, aes(x = Location, y = Severity)) +
  geom_jitter(
    aes(
      size = Frequency,
      color = Severity,
      shape = Accident_Type
    ),
    width = 0.2,
    height = 0.1,
    alpha = 0.8
  ) +
  scale_color_manual(
    values = c(
      "Minor" = "#2ECC71",
      "Major" = "#F39C12",
      "Fatal" = "#C0392B"
    )
  ) +
  scale_size_continuous(range = c(5, 15)) +
  labs(
    title = "Traffic Accident Analysis",
    subtitle = "Visualizing Severity, Frequency, and Accident Type",
    x = "Location Zone",
    y = "Accident Severity",
    size = "Accident\nFrequency",
    shape = "Accident\nType",
    color = "Severity\nLevel"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 16),
    plot.subtitle = element_text(size = 12),
    axis.text = element_text(size = 12),
    axis.title = element_text(size = 13),
    legend.position = "right",
    legend.key.size = unit(0.2, "cm"),
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 10, face = "bold"),
    legend.spacing.y = unit(0.15, "cm")
  )
