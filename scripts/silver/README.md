# Silver Layer — Data Dictionary

## 1. `silver.crm_cust_info`

| Column Name | Data Type | Description |
|---|---|---|
| `cst_id` | `INT` | Customer identifier; records with a null ID are excluded, and the most recent record per customer is retained |
| `cst_key` | `NVARCHAR(50)` | Customer business key or reference code |
| `cst_firstname` | `NVARCHAR(50)` | Customer's first name, with leading and trailing whitespace removed |
| `cst_lastname` | `NVARCHAR(50)` | Customer's last name, with leading and trailing whitespace removed |
| `cst_material_status` | `NVARCHAR(50)` | Customer's marital status, standardized to `Single`, `Married`, or `n/a` |
| `cst_gndr` | `NVARCHAR(50)` | Customer's gender, standardized to `Female`, `Male`, or `n/a` |
| `cst_create_date` | `DATE` | Date the customer record was created in the source system |
| `dwh_create_date` | `DATETIME2` | Date and time the record was inserted into the data warehouse; defaults to the current server date and time |

## 2. `silver.crm_prd_info`

| Column Name | Data Type | Description |
|---|---|---|
| `prd_id` | `INT` | Product identifier |
| `cat_id` | `NVARCHAR(50)` | Category identifier derived from the first five characters of the source product key, with hyphens replaced by underscores |
| `prd_key` | `NVARCHAR(50)` | Product business key derived from the source product key by removing its category prefix |
| `prd_nm` | `NVARCHAR(50)` | Product name |
| `prd_cost` | `INT` | Product cost; null values are replaced with `0` |
| `prd_line` | `NVARCHAR(50)` | Product line standardized to `Mountain`, `Road`, `Other Sales`, `Touring`, or `n/a` |
| `prd_start_dt` | `DATE` | Date from which the product record or version becomes valid |
| `prd_end_dt` | `DATE` | Last valid date of the product version, calculated as one day before the next version's start date; may be null for the latest version |
| `dwh_create_date` | `DATETIME2` | Date and time the record was inserted into the data warehouse; defaults to the current server date and time |

## 3. `silver.crm_sales_details`

| Column Name | Data Type | Description |
|---|---|---|
| `sls_ord_num` | `VARCHAR(50)` | Sales order number |
| `sls_prd_key` | `VARCHAR(50)` | Business key identifying the product sold |
| `sls_cust_id` | `INT` | Identifier of the customer associated with the sale |
| `sls_order_dt` | `DATE` | Sales order date; invalid-length values and zero dates are converted to null |
| `sls_ship_dt` | `DATE` | Shipping date; invalid-length values and zero dates are converted to null |
| `sls_due_dt` | `DATE` | Due date; invalid-length values and zero dates are converted to null |
| `sls_sales` | `INT` | Sales amount; invalid, nonpositive, or inconsistent values are recalculated as quantity multiplied by the absolute unit price |
| `sls_quantity` | `INT` | Quantity of products sold |
| `sls_price` | `INT` | Unit price; null or nonpositive values are recalculated from sales divided by quantity when quantity is nonzero |
| `dwh_create_date` | `DATETIME2` | Date and time the record was inserted into the data warehouse; defaults to the current server date and time |

## 4. `silver.erp_CUST_AZ12`

| Column Name | Data Type | Description |
|---|---|---|
| `CID` | `VARCHAR(50)` | Customer identifier; identifiers beginning with `NA` have the prefix removed according to the source-specific transformation |
| `BDATE` | `DATE` | Customer's birth date; future dates are replaced with null |
| `GEN` | `VARCHAR(50)` | Customer's gender, intended to be standardized to `Female`, `Male`, or `n/a` |
| `dwh_create_date` | `DATETIME2` | Date and time the record was inserted into the data warehouse; defaults to the current server date and time |

## 5. `silver.erp_LOC_A101`

| Column Name | Data Type | Description |
|---|---|---|
| `CID` | `VARCHAR(50)` | Customer identifier with hyphens removed |
| `CNTRY` | `VARCHAR(50)` | Customer's country; `DE` is mapped to `Germany`, selected US country codes are intended to map to `United States`, and blank or null values are mapped to `n/a` |
| `dwh_create_date` | `DATETIME2` | Date and time the record was inserted into the data warehouse; defaults to the current server date and time |

## 6. `silver.erp_PX_CAT_G1V2`

| Column Name | Data Type | Description |
|---|---|---|
| `ID` | `VARCHAR(50)` | Product or category identifier, retained from the Bronze layer |
| `CAT` | `VARCHAR(50)` | Product category, retained from the Bronze layer |
| `SUBCAT` | `VARCHAR(50)` | Product subcategory, retained from the Bronze layer |
| `MAINTENANCE` | `VARCHAR(50)` | Maintenance classification or related information, retained from the Bronze layer |
| `dwh_create_date` | `DATETIME2` | Date and time the record was inserted into the data warehouse; defaults to the current server date and time |

