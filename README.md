# AdventureWorks Sales Performance & Data Analytics Dashboard

This project demonstrates an end-to-end data analytics solution using **SQL Server**, **Power BI**, and the **AdventureWorksDW2022** database.  
It is designed as a professional portfolio project to showcase skills in **SQL**, **data modeling**, **DAX**, and **dashboard design**.

---

## Project Overview

The purpose of this project is to analyze AdventureWorks sales performance across products, customers, territories, and time periods.  
The solution includes:

- SQL-based data exploration and preparation  
- Dimensional data modeling (Star Schema)  
- A complete set of core and advanced DAX measures  
- An interactive Power BI dashboard  
- Business insights based on the analyzed data  

---

## Data Source

The project uses the **AdventureWorksDW2022** data warehouse hosted in **SQL Server Management Studio (SSMS)**.

Main tables used:

- **FactInternetSales**
- **DimProduct**, **DimProductSubcategory**, **DimProductCategory**
- **DimCustomer**, **DimGeography**
- **DimDate**
- **DimSalesTerritory**

---

## Data Model

A clean **Star Schema** was designed in Power BI:

- Fact table: `FactInternetSales`
- Dimensions: Date, Product, Customer, Territory, Geography

All relationships are **one-to-many** and follow best modeling practices.

---

## DAX Measures (Examples)

```DAX
Total Sales = SUM(FactInternetSales[SalesAmount])

Margin = SUM(FactInternetSales[SalesAmount]) - SUM(FactInternetSales[TotalProductCost])

YoY Sales Growth =
VAR CurrentSales = [Total Sales]
VAR PreviousSales =
    CALCULATE([Total Sales], SAMEPERIODLASTYEAR(DimDate[FullDateAlternateKey]))
RETURN
DIVIDE(CurrentSales - PreviousSales, PreviousSales)
