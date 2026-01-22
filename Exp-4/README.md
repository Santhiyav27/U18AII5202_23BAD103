# **Traffic Accident Analysis using R**

## **Project Overview**

This project performs exploratory data analysis on traffic accident data using the R programming language. The primary objective is to analyze accident severity, frequency, and accident types across different locations using multivariate data visualization techniques. The project helps in identifying high-risk zones and understanding accident patterns through an intuitive graphical representation.

---

## **Tools and Libraries Used**

* **R Programming Language**
* **ggplot2** – For advanced data visualization
* **dplyr** – For data manipulation and aggregation

---

## **Dataset Description**

**File Name:** `traffic_accidents.csv`
**Source:** Traffic accident records dataset

### **Dataset Columns**

* **Accident_ID** – Unique identifier for each accident record
* **Location** – Location or zone where the accident occurred
* **Date** – Date of the accident
* **Time** – Time at which the accident occurred
* **Accident_Type** – Type of accident (e.g., collision, skid, rollover)
* **Severity** – Severity level of the accident (Minor, Major, Fatal)
* **Vehicles_Involved** – Number of vehicles involved in the accident
* **Casualties** – Number of people injured or killed

---

## **Steps Performed**

### **1. Data Loading**

The traffic accident dataset is loaded into the R environment using the `read.csv()` function after setting the appropriate working directory.

---

### **2. Data Aggregation**

The dataset is grouped based on:

* Location
* Accident Type
* Severity

The frequency of accidents for each combination is calculated using aggregation functions. This prepares the data for multivariate visualization.

---

### **3. Severity Ordering**

Accident severity levels are converted into an ordered factor with the following order:

* Minor
* Major
* Fatal

This ensures consistent and meaningful positioning of severity levels in the visualization.

---

### **4. Multivariate Visualization**

A jitter plot is created using `ggplot2` to visualize multiple accident attributes simultaneously.

#### **Visualization Mapping**

* **X-axis:** Location Zone
* **Y-axis:** Accident Severity
* **Point Size:** Accident Frequency
* **Point Color:** Severity Level
* **Point Shape:** Accident Type

A fixed random seed is applied to maintain consistent jitter positioning across multiple runs.

---

## **Visualizations Generated**

* Jitter plot showing accident severity distribution across locations
* Color-coded representation of severity levels (Minor, Major, Fatal)
* Size-based encoding to represent accident frequency
* Shape-based differentiation of accident types

---

## **Key Insights**

* Identifies locations with high accident frequency
* Highlights zones with a higher occurrence of fatal and major accidents
* Reveals relationships between accident type and severity
* Helps in identifying high-risk zones requiring safety interventions

---

## **Conclusion**

This project demonstrates the effective use of R for analyzing and visualizing complex traffic accident data. By combining color, size, and shape encodings in a single plot, the visualization provides clear insights into accident severity and frequency across locations, supporting data-driven traffic safety analysis and planning.