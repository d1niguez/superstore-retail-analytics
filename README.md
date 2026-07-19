# Superstore Retail Analytics

An end-to-end retail analytics project examining regional profitability, product performance, seasonality, and customer value using the Superstore dataset. Built with SQL, Python, and Power BI.

## Business Questions

- Which regions and product categories are the most and least profitable?
- Is discounting driving the profitability gaps?
- Are there seasonal patterns worth planning around?
- Which customers are actually valuable to the business,and does "loyal" always mean "profitable"?

## Tools Used

- **MySQL** — data cleaning and exploratory analysis with 7 queries
- **Python (pandas, matplotlib)** — RFM customer segmentation and visualization
- **Power BI** — interactive dashboard tying all findings together

## Key Findings

**Regional profitability varies widely, and discounting is a major driver.**
West is the most profitable region (14.86% margin); Central is the weakest (8.06% margin), despite solid sales volume. Central's average discount rate (23.8%) is nearly double West's (11.0%), a strong candidate explanation for the gap.

**Furniture, specifically Tables and Bookcases, loses money company-wide.**
Tables lost $17,725 overall, driven by a 26.1% average discount rate. This pattern is even more pronounced within Central region specifically, where otherwise-healthy categories (Furnishings, Appliances) also turn unprofitable.

**Sales are highly seasonal.**
Every year in the dataset shows the same pattern: slow January/February, then a steady climb toward strong September, November, and December months. 2017 was a clear growth year, with November 2017 posting the highest single-month profit in the dataset.

**RFM segmentation revealed a counterintuitive risk: "Loyal Customers" are unprofitable on average.**
Despite ordering frequently and recently, the Loyal Customers segment averages **-$35.33 profit per customer**, driven primarily by Furniture purchases (-$83.24/order average), the same product category identified as a margin problem in the SQL analysis. Champions, by contrast, average **$247.16 profit per customer**  nearly 3x more than any other segment.

This finding connects the SQL and Python phases of the project directly: the business may be retaining engaged customers through a product category that isn't actually profitable to serve.

## Dashboard

![Dashboard Screenshot](dashboard_screenshot.png)

The Power BI dashboard includes four interactive visuals: regional profitability, sub-category profit (with loss-making categories highlighted in red), monthly profit trend, and customer segment breakdown — filterable by Region and Category.

## Repository Structure

| File | Description |
|---|---|
| `queries.sql` | 7 SQL queries covering regional, category, discount, segment, time, and drill-down analysis |
| `data_cleaning.sql` | Fixes a text-formatted date column, converting it to a proper date type |
| `rfm_analysis.ipynb` | Python notebook performing RFM customer segmentation and visualization |
| `rfm_segment_profit.png` | Bar chart of average profit per customer by RFM segment |
| `superstore_dashboard.pbix` | Power BI dashboard file |
| `dashboard_screenshot.png` | Static preview of the dashboard |

## Next Steps

- Explore whether Central region's discount authorization practices differ structurally from other regions
- Extend RFM segmentation with a cohort analysis to track how customer value changes over time
