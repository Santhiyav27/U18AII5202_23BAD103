# **Healthcare Data Analysis using R**

## **Project Overview**

This project performs multivariate exploratory data analysis (EDA) on healthcare data using the R programming language. The analysis focuses on understanding relationships among key health parameters such as age, BMI, glucose level, and blood pressure through visualizations and correlation analysis.

---

## **Tools and Libraries Used**

* R Programming Language
* ggplot2 – Data visualization
* GGally – Multivariate visualization (scatter plot matrix)

---

## **Dataset Description**

**File Name:** `healthcare_data.csv`
**Source:** Healthcare patient records dataset

### **Dataset Columns**

* **Patient_ID** – Unique patient identifier
* **Age** – Age of the patient
* **Gender** – Gender of the patient
* **BMI** – Body Mass Index
* **Glucose_Level** – Blood glucose level
* **Blood_Pressure** – Blood pressure reading
* **Cholesterol** – Cholesterol level
* **Disease_Risk** – Predicted disease risk level

---

## **Steps Performed**

### **1. Data Loading**

The healthcare dataset is loaded into the R environment using the `read.csv()` function after setting the working directory.

### **2. Age Group Classification**

Patients are grouped into age categories (Young, Middle-aged, Senior) using the `cut()` function. This grouping is used for color encoding in visualizations.

### **3. Scatter Plot Matrix Generation**

A scatter plot matrix is created using `ggpairs()` to visualize pairwise relationships among age, BMI, glucose level, and blood pressure. Color encoding is applied based on age groups to enhance interpretation.

### **4. Correlation Analysis**

A correlation matrix is computed for the selected numerical health parameters to identify the strength and direction of relationships between variables.

---

## **Visualizations Generated**

* Scatter plot matrix with age-group-based color encoding
* Correlation matrix of health indicators

---

## **Key Insights**

* Identifies relationships between body-related and cardiovascular parameters
* Highlights associations among age, BMI, glucose level, and blood pressure
* Helps understand multivariate health patterns useful for predictive analysis

---

## **Conclusion**

This project demonstrates the use of R for multivariate healthcare data analysis. Through scatter plot matrices and correlation analysis, it provides meaningful insights into relationships among health indicators, supporting data-driven healthcare analytics and predictive modeling.
