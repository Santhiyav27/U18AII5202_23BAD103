print("Santhiya Varma S M - 23BAD103")

library(ggplot2)
library(dplyr)
library(tidyr)

setwd("C:/Users/santh/Downloads")
student_data <- read.csv("student_performance.csv")

long_data <- student_data %>%
  pivot_longer(
    cols = c(Internal_Test1, Internal_Test2),
    names_to = "Test",
    values_to = "Marks"
  )
head(long_data)

subject_avg <- student_data %>%
  group_by(Subject) %>%
  summarise(Avg_Marks = mean((Internal_Test1 + Internal_Test2) / 2))
ggplot(subject_avg, aes(x = Subject, y = Avg_Marks)) +
  geom_bar(stat = "identity", fill = "darkorange") +
  labs(
    title = "Subject-wise Average Marks",
    x = "Subject",
    y = "Average Marks"
  ) +
  theme_minimal()

trend_data <- student_data %>%
  select(Student_ID, Subject, Internal_Test1, Internal_Test2) %>%
  pivot_longer(
    cols = c(Internal_Test1, Internal_Test2),
    names_to = "Test",
    values_to = "Marks"
  )
ggplot(trend_data, aes(x = Test, y = Marks, group = Subject, color = Subject)) +
  geom_line(size = 1) +
  labs(
    title = "Performance Trend Across Internal Tests",
    x = "Test",
    y = "Marks"
  ) +
  scale_color_brewer(palette = "Dark2") +
  theme_minimal()

grade_data <- student_data %>%
  group_by(Final_Grade) %>%
  summarise(Count = n())
ggplot(grade_data, aes(x = "", y = Count, fill = Final_Grade)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Final Grade Distribution") +
  theme_void() +
  scale_fill_brewer(palette = "Set2")
