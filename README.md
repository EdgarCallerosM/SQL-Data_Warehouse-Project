# SQL Data Warehouse Project

## Project Overview

In this project, we create a Data WareHouse inside SQL Server Managemnet Studio following the three layer process proposed by Baraa Khatib Salkini. These three layers are:

1. Bronze layer
2. Silver layer
3. Gold layer

<img alt="Data_Architecture" src="https://github.com/user-attachments/assets/4d324262-47fb-411c-8806-7dca129de786" width="1984" height="664" />

In the Bronze layer, we extract the raw data from the sources as it is. We do not do any cleaning or transformations. The names of tables and columns are kept exactly the same as the source. The main object type in this layer are tables. No data-modeling is done at this stage.

In the Silver layer, we do the data cleaning and transforming. If necessary, we also do data enrichment and create calculated columns. The names of tables and columns are kept exactly the same as in the Bronze layer. No data-modeling is done at this stage.  

Finally, in the Gold layer, we do aggregations and Join tables to create tables that are ready to be used for analysis. These are the objects that data analysts and business intelligence analysts will be using for their reports. Here we change the names of tables and columns to be more user-friendly. The main object type in this layer are Views. In this stage is where we do the data-modeling. For this particular project, we will use a star-schema. 

## Raw tables

<img width="5048" height="2088" alt="Data_Flow" src="https://github.com/user-attachments/assets/3c0b217e-58b7-408e-b6d8-a412df09293e" />

| Table Name | Description |
|---|---|
| `crm_cust_info` | Stores raw customer information from the CRM system, including customer IDs, names, marital status, gender, and record creation dates. |
| `crm_prd_info` | Stores raw product information from the CRM system, including product IDs, names, costs, product lines, and validity dates. |
| `crm_sales_details` | Stores raw sales transaction details, including order numbers, customer and product identifiers, order dates, quantities, prices, and sales amounts. |
| `erp_CUST_AZ12` | Stores customer information from the ERP system, including customer identifiers, birth dates, and gender. |
| `erp_LOC_A101` | Stores customer location information from the ERP system, including customer identifiers and country codes or names. |
| `erp_PX_CAT_G1V2` | Stores product classification information from the ERP system, including product identifiers, categories, subcategories, and maintenance classifications. |
