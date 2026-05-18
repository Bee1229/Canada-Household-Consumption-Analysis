--DIMENSION TABLES
CREATE OR REPLACE TABLE ANALYTICS.dim_dates AS(
    SELECT
        ROW_NUMBER() OVER(ORDER BY year) AS DATE_ID,
        year,
        ref_date
    FROM (
        SELECT DISTINCT year, ref_date
        FROM STAGING.BI_CONSUMPTION_STAGING
    )
);

CREATE OR REPLACE TABLE ANALYTICS.dim_geo AS(
    SELECT DISTINCT
        ROW_NUMBER() OVER(ORDER BY geo) AS geo_id,
        dguid,
        geo
    FROM (
        SELECT DISTINCT DGUID,GEO
        FROM STAGING.BI_CONSUMPTION_STAGING
));

CREATE OR REPLACE TABLE ANALYTICS.dim_category AS(
    SELECT 
        ROW_NUMBER() OVER(ORDER BY consumption_category) AS category_id,
        consumption_category
    FROM (
        SELECT DISTINCT consumption_category
        FROM STAGING.BI_CONSUMPTION_STAGING
    )
);

CREATE OR REPLACE TABLE ANALYTICS.dim_estimates AS(
    SELECT
        ROW_NUMBER()OVER(ORDER BY estimates) AS estimate_id,
        estimates
    FROM(
        SELECT DISTINCT estimates
        FROM STAGING.BI_CONSUMPTION_STAGING
    )
);


--FACTS TABLE
CREATE OR REPLACE TABLE ANALYTICS.fact_consumption AS(
    SELECT 
        g.geo_id,
        d.date_id,
        c.category_id,
        e.estimate_id,
        b.value,
        b.uom,
        b.scalar_factor,
        b.previous_year_value,
        b.year_over_year_growth
    FROM STAGING.BI_CONSUMPTION_STAGING b
    LEFT JOIN ANALYTICS.dim_geo g ON
        b.geo = g.geo
    LEFT JOIN ANALYTICS.dim_dates d ON
        b.ref_date = d.ref_date
    LEFT JOIN ANALYTICS.dim_category c ON
        b.consumption_category = c.consumption_category
    LEFT JOIN ANALYTICS.dim_estimates e ON
        b.estimates = e.estimates
);



select * from analytics.dim_category;