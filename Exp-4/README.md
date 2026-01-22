# **Traffic Accident Analysis using R**

## **Project Overview**

This project performs exploratory data analysis on traffic accident data using the R programming language. The analysis focuses on understanding accident severity, frequency, and accident types across different locations through multivariate visualization techniques.

---

## **Tools and Libraries Used**

* R Programming Language
* ggplot2 – Data visualization
* dplyr – Data manipulation and aggregation

---

## **Dataset Description**

**File Name:** `traffic_accidents.csv`
**Source:** Traffic accident records dataset

### **Dataset Columns**

* **Accident_ID** – Unique identifier for each accident
* **Location** – Location or zone where the accident occurred
* **Date** – Date of the accident
* **Time** – Time of the accident
* **Accident_Type** – Type of accident (e.g., collision, skid, rollover)
* **Severity** – Severity level of the accident (Minor, Major, Fatal)
* **Vehicles_Involved** – Number of vehicles involved
* **Casualties** – Number of people injured or killed

---

## **Steps Performed**

### **1. Data Loading**

The traffic accident dataset is loaded into the R environment using the `read.csv()` function after setting the working directory.

### **2. Data Aggregation**

The dataset is grouped by location, accident type, and severity. The frequency of accidents for each combination is calculated to support multivariate analysis.

### **3. Severity Ordering**

Accident severity levels are converted into an ordered factor to ensure consistent and meaningful visualization.

### **4. Multivariate Visualization**

A jitter plot is generated using `ggplot2` where:

* The x-axis represents accident locations
* The y-axis represents severity levels
* Point size indicates accident frequency
* Point color represents severity
* Point shape represents accident type

---

## **Visualizations Generated**

* Jitter plot showing accident severity across locations
* Color-coded severity levels (Minor, Major, Fatal)
* Size-based representation of accident frequency
* Shape-based differentiation of accident types

---

## **Key Insights**

* Identifies locations with higher accident frequencies
* Highlights the distribution of accident severity across zones
* Reveals patterns between accident type and severity
* Supports identification of high-risk locations

---

## **Conclusion**

This analysis demonstrates how R can be used to visualize complex traffic accident data using multivariate encoding techniques. By combining size, color, and shape aesthetics, the visualization provides clear insights into accident patterns and supports data-driven traffic safety analysis.
