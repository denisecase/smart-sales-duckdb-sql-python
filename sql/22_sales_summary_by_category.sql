-- Title: Sales Quantity and Sales Amount by Product Category
-- This SQL script retrieves the total sales quantity and total sales amount,
-- grouped by the product category from the Contoso-style DuckDB data warehouse.

SELECT 
    dim_product_category.ProductCategoryName AS category,
    SUM(fact_sales.SalesQuantity) AS total_quantity,
    SUM(fact_sales.SalesAmount) AS total_amount
FROM fact_sales
JOIN dim_product ON fact_sales.ProductKey = dim_product.ProductKey
JOIN dim_product_subcategory ON dim_product.ProductSubcategoryKey = dim_product_subcategory.ProductSubcategoryKey
JOIN dim_product_category ON dim_product_subcategory.ProductCategoryKey = dim_product_category.ProductCategoryKey
GROUP BY dim_product_category.ProductCategoryName
ORDER BY total_amount DESC
LIMIT 10;
