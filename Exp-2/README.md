# E-Commerce Transactions Analysis using R

## Project Overview

This project performs exploratory data analysis (EDA) on e-commerce transaction data using the R programming language. The analysis focuses on understanding transaction amount distributions and identifying monthly sales intensity patterns across different product categories through visualizations.

---

## Tools and Libraries Used

* R Programming Language
* ggplot2 – Data visualization
* dplyr – Data manipulation
* lubridate – Date handling and extraction

---

## Dataset Description

**File Name:** `ecommerce_transactions.csv`
**Source:** E-commerce transaction dataset

### Dataset Columns

* **Transaction_ID** – Unique transaction identifier
* **Transaction_Date** – Date of transaction
* **Transaction_Amount** – Total transaction value
* **Product_Category** – Category of the purchased product

---

## Steps Performed

### 1. Data Loading

The dataset is loaded into the R environment using the `read.csv()` function after setting the working directory.

### 2. Histogram of Transaction Amounts

A histogram is generated to visualize the distribution of transaction amounts. This helps in understanding spending patterns and frequency ranges of transactions.

### 3. Boxplot of Transaction Amounts

A boxplot is created to identify the spread of transaction amounts and detect potential outliers in the data.

### 4. Monthly Sales Intensity Heatmap

Transaction dates are converted into months using the `lubridate` package. Total sales are then aggregated by product category and month. A heatmap is used to visualize monthly sales intensity across different product categories.

---

## Visualizations Generated

* Histogram of Transaction Amounts
* Boxplot of Transaction Amounts
* Heatmap of Monthly Sales Intensity by Product Category

---

## Key Insights

* Reveals the distribution and variability of transaction amounts.
* Helps identify unusually high or low transaction values.
* Highlights peak sales periods and high-performing product categories across months.

---

## Conclusion

This exploratory data analysis project demonstrates how R can be effectively used to analyze e-commerce transaction data. Through statistical visualizations and aggregation techniques, the project provides valuable insights into customer purchasing behavior and seasonal sales trends.
