# Canada Household Consumption Analysis
## Project Background
The analysis shows household consumption expenditure across Canadian provinces and territories using Python, SQL, and Power BI dashboards. The goal is to explore how consumption changes across **time**, **geography**, and **spending categories**, and to identify which **provinces** and **categories** contribute the most to overall consumption trends.

The dashboard provides an interactive view of consumption performance through key indicators such as **total consumption**, **year-to-year growth**, **compound annual growth rate (CAGR)**, and **average consumption**. 

Insights and recommendations are provided across the following key areas:

* **Overall Consumption Performance:** Evaluation of total consumption, average consumption, year-to-year growth, and CAGR.
* **Geographic Analysis:** Comparison of consumption levels across provinces and territories.
* **Category-Level Analysis:** Identification of the consumption categories with the highest and lowest spending.

## Tools and Technologies Used

* **Python:** Data extraction, cleaning, exploratory data analysis, and preparation before loading into the database.
* **Snowflake:** Cloud data warehouse used to store, organize, and query the cleaned consumption data.
* **Power BI:** Dashboard development, data modelling, DAX measures, and interactive visualizations.

## Fact Table

#### FACT_CONSUMPTION 
Contains the main consumption values and numeric measures used for analysis.

#### DIM_GEO
Contains geographic information for Canadian provinces and territories.

#### DIM_DATES
Contains date-related information used for time-based analysis.

#### DIM_CATEGORY
Contains consumption category names.

#### DIM_ESTIMATES
Contains estimate type information.

<img width="650" height="334" alt="Screenshot 2026-05-18 010905" src="https://github.com/user-attachments/assets/d35f8402-abcc-439a-b27f-ddc117d47c89" />

The model uses one-to-many relationships from the dimension tables to the fact table.

## Executive Overview

The executive overview page provides a high-level summary of consumption performance across Canada.

Key performance indicators include:

* Year-to-Year Growth: 9.30
* Total Consumption: $51.74M
* CAGR: 4.34
* Average Consumption: $5.85K

The page also includes visual comparisons of total consumption by province and total consumption by category. These visuals help identify the leading provinces and the most significant categories contributing to overall household consumption.

<img width="750" height="434" alt="Screenshot 2026-05-17 234431" src="https://github.com/user-attachments/assets/bc9f5c9f-606d-4c1c-af79-5be2bc273dc6" />

#### Key Observations
* Ontario records the highest total consumption among provinces.
* Quebec and British Columbia also show strong consumption levels.
* Smaller provinces and territories such as Nunavut, Yukon, Northwest Territories, and Prince Edward Island contribute lower total consumption values.
* Categories such as housing-related expenses, health, transport, education, recreation, food, and insurance-related services appear among the major contributors to household consumption.

## Geographic Analysis

The geographic analysis page explores consumption performance across Canadian provinces and territories using a map-based view and province-level comparisons.

<img width="750" height="436" alt="Screenshot 2026-05-17 234510" src="https://github.com/user-attachments/assets/bc25ffd8-bbc5-4cf9-82fc-155cd14ef08e" />

#### Key Observations
* Consumption is not evenly distributed across Canada.
* Larger provinces such as Ontario, Quebec, British Columbia, and Alberta show higher total consumption values.
* Territories and smaller provinces generally record lower total consumption, which may reflect smaller population size and different economic structures.
* The map view makes it easier to identify regional variation and compare consumption patterns visually.

## Category Analysis

The category analysis page focuses on how consumption differs across spending categories. It allows users to compare total consumption and year-to-year growth by category, province, and year.

<img width="750" height="443" alt="Screenshot 2026-05-18 011803" src="https://github.com/user-attachments/assets/4c29f575-77a2-465e-bae0-345f7026437e" />

#### Key Observations
* Some categories contribute significantly more to total consumption than others.
* Housing-related categories, health, transport, food, and insurance-related categories appear as major spending areas.
* Certain categories show negative year-to-year growth depending on the selected province and year.
* The decomposition tree provides a useful breakdown of consumption and growth drivers across year, category, and geography.

## Insights Summary

Based on the dashboard analysis, the following insights were identified:
* Ontario is the leading province by total consumption, followed by other large provinces such as Quebec, British Columbia, and Alberta.
* Consumption is concentrated in a few major provinces, while smaller provinces and territories contribute much lower values.
* Category-level spending is uneven, with housing-related expenses, health, transport, food, education, and insurance-related categories contributing strongly to total consumption.
* In the Category Analysis page, the selected **2020** view shows a negative year-to-year growth value for **Net expenditure abroad**, especially for Ontario. Meaning the spending connected to international travel or expenditure outside Canada declined sharply during that period. The 2020 decline may reflect **COVID**, which reduced international mobility.

## Recommendations

Based on the analysis, the following recommendations are provided:

* Provinces such as Ontario, Quebec, British Columbia, and Alberta should be prioritized for deeper analysis because they contribute significantly to total consumption.
* Categories with negative year-to-year growth should be reviewed to understand whether the decline is due to economic pressure, changing household behaviour, or category-specific factors.
* CAGR should be used alongside year-to-year growth because it provides a more stable view of consumption growth over time and provides a long-term overview.
* Adding other factors like population, income, inflation, or cost-of-living indicators would provide a stronger economic interpretation and allow for per-capita consumption analysis.
