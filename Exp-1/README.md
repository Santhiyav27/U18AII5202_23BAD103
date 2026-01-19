# Student Performance Analysis using R

## Project Overview

This project analyzes student academic performance using the R programming language by visualizing internal test scores and final grades. The objective is to apply data transformation, aggregation, and visualization techniques to extract meaningful insights from academic data.

---

## Tools and Libraries Used

* R Programming Language
* ggplot2 – Data visualization
* dplyr – Data manipulation
* tidyr – Data reshaping

---

## Dataset Description

**File Name:** `student_performance.csv`
**Source:** Student performance dataset

### Dataset Columns

* **Student_ID** – Unique student identifier
* **Subject** – Subject name
* **Internal_Test1** – Marks scored in Internal Test 1
* **Internal_Test2** – Marks scored in Internal Test 2
* **Final_Grade** – Final grade obtained

---

## Steps Performed

### 1. Data Loading

The dataset is loaded into the R environment using the `read.csv()` function for further analysis.

### 2. Data Reshaping

Internal test scores are converted from wide format to long format using the `pivot_longer()` function to simplify comparative analysis.

### 3. Subject-wise Average Marks Analysis

The average marks for each subject are calculated by taking the mean of Internal Test 1 and Internal Test 2 scores. A bar chart is used to visualize the subject-wise average performance.

### 4. Performance Trend Analysis

Marks obtained in both internal tests are plotted using a line graph to observe performance trends across tests for each subject.

### 5. Final Grade Distribution Analysis

Students are grouped based on final grades, and a pie chart (polar bar chart) is used to visualize the distribution of grades.

---

## Visualizations Generated

* Subject-wise Average Marks (Bar Chart)
* Performance Trend Across Internal Tests (Line Chart)
* Final Grade Distribution (Pie Chart)

---

## Key Insights

* Identifies subjects with higher and lower average performance.
* Highlights consistency or variation in student performance across internal tests.
* Provides a clear overview of the overall grade distribution among students.

---

## Conclusion

This project demonstrates the effective use of R for exploratory data analysis in an academic context. By combining data reshaping, aggregation, and visualization techniques, the project provides clear and interpretable insights into student performance.
