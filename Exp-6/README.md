\# \*\*Retail Business Multivariate Analysis using R\*\*



\## \*\*Project Overview\*\*



This project performs multivariate exploratory data analysis (EDA) on retail business data using the R programming language. The analysis focuses on understanding relationships among key business variables such as sales, profit, discount, customer segment, product category, and region through advanced visualizations.



---



\## \*\*Tools and Libraries Used\*\*



\* R Programming Language

\* ggplot2 – Data visualization

\* GGally – Multivariate visualization (parallel coordinates)



---



\## \*\*Dataset Description\*\*



\*\*File Name:\*\* `retail\_business.csv`

\*\*Source:\*\* Retail business transaction dataset



\### \*\*Dataset Columns\*\*



\* \*\*Order\_ID\*\* – Unique order identifier

\* \*\*Region\*\* – Sales region (East, West, South, etc.)

\* \*\*Product\_Category\*\* – Category of the product

\* \*\*Sales\*\* – Sales amount

\* \*\*Profit\*\* – Profit gained or loss incurred

\* \*\*Discount\*\* – Discount applied on the product

\* \*\*Customer\_Segment\*\* – Type of customer (Corporate, Consumer, Home Office)



---



\## \*\*Steps Performed\*\*



\### \*\*1. Data Loading and Preparation\*\*



The retail dataset is loaded into the R environment using the `read.csv()` function after setting the working directory. Categorical variables such as region, product category, and customer segment are converted into factors for proper visualization.



\### \*\*2. Parallel Coordinate Plot\*\*



A parallel coordinate plot is generated using `ggparcoord()` to visualize sales, profit, and discount together. Customer segment is used for grouping, allowing comparison of patterns across different customer types.



\### \*\*3. Bubble Chart Generation\*\*



A bubble chart is created using `ggplot2` to analyze the relationship between sales and profit. Bubble size represents discount, and color represents product category, helping identify how discounts affect profitability.



\### \*\*4. Trellis (Faceted) Display\*\*



A trellis display is implemented using `facet\_wrap()` to visualize sales versus profit separately for each region. This enables region-wise comparison and simplifies analysis of regional performance.



---



\## \*\*Visualizations Generated\*\*



\* Parallel coordinate plot for sales, profit, and discount

\* Bubble chart showing sales vs profit with discount-based bubble size

\* Trellis display of sales vs profit by region



---



\## \*\*Key Insights\*\*



\* Reveals relationships among sales, profit, and discount across customer segments

\* Highlights the impact of discounts on profitability

\* Enables comparison of regional sales and profit trends

\* Supports business decision-making through multivariate analysis



---



\## \*\*Conclusion\*\*



This project demonstrates the use of R for multivariate retail data analysis. By applying parallel coordinate plots, bubble charts, and trellis displays, it provides meaningful insights into business performance and customer behavior, supporting data-driven retail analytics and AI-based recommendations.

