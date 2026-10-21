# Silver Layer — Data Dictionary

## 1. `silver.crm_cust_info`

| Column Name | Data Type | Description |
|---|---|---|
| `cst_id` | `INT` | Customer identifier |
| `cst_key` | `NVARCHAR(50)` | Customer business key or reference code |
| `cst_firstname` | `NVARCHAR(50)` | Customer's first name |
| `cst_lastname` | `NVARCHAR(50)` | Customer's last name |
| `cst_material_status` | `NVARCHAR(50)` | Customer's marital status (assuming `material` is a typo for `marital`) |
| `cst_gndr` | `NVARCHAR(50)` | Customer's gender |
| `cst_create_date` | `DATE` | Date the customer record was created |
| `dwh_create_date` | `DATETIME2` | Date and time the record was created in the data warehouse; defaults to the current server date and time |

## 2. `silver.crm_prd_info`

| Column Name | Data Type | Description |
|---|---|---|
| `prd_id` | `INT` | Product identifier |
| `prd_key` | `VARCHAR(50)` | Product business key or reference code |
| `prd_nm` | `VARCHAR(50)` | Product name |
| `prd_cost` | `INT` | Product cost |
| `prd_line` | `VARCHAR(50)` | Product line or category designation |
| `prd_start_dt` | `DATE` | Start date of the product record or version |
| `prd_end_dt` | `DATE` | End date of the product record or version |
| `dwh_create_date` | `DATETIME2` | Date and time the record was created in the data warehouse; defaults to the current server date and time |

## 3. `silver.crm_sales_details`

| Column Name | Data Type | Description |
|---|---|---|
| `sls_ord_num` | `VARCHAR(50)` | Sales order number |
| `sls_prd_key` | `VARCHAR(50)` | Business key identifying the product sold |
| `sls_cust_id` | `INT` | Identifier of the customer associated with the sale |
| `sls_order_dt` | `INT` | Sales order date, stored as an integer |
| `sls_ship_dt` | `INT` | Shipping date, stored as an integer |
| `sls_due_dt` | `INT` | Due date, stored as an integer |
| `sls_sales` | `INT` | Sales amount or revenue associated with the order line |
| `sls_quantity` | `INT` | Quantity of products sold |
| `sls_price` | `INT` | Price per product or unit price |
| `dwh_create_date` | `DATETIME2` | Date and time the record was created in the data warehouse; defaults to the current server date and time |

## 4. `silver.erp_CUST_AZ12`

| Column Name | Data Type | Description |
|---|---|---|
| `CID` | `VARCHAR(50)` | Customer identifier from the ERP system |
| `BDATE` | `DATE` | Customer's birth date |
| `GEN` | `VARCHAR(50)` | Customer's gender |
| `dwh_create_date` | `DATETIME2` | Date and time the record was created in the data warehouse; defaults to the current server date and time |

## 5. `silver.erp_LOC_A101`

| Column Name | Data Type | Description |
|---|---|---|
| `CID` | `VARCHAR(50)` | Customer identifier from the ERP system |
| `CNTRY` | `VARCHAR(50)` | Customer's country |
| `dwh_create_date` | `DATETIME2` | Date and time the record was created in the data warehouse; defaults to the current server date and time |

## 6. `silver.erp_PX_CAT_G1V2`

| Column Name | Data Type | Description |
|---|---|---|
| `ID` | `VARCHAR(50)` | Product identifier or product key |
| `CAT` | `VARCHAR(50)` | Product category |
| `SUBCAT` | `VARCHAR(50)` | Product subcategory |
| `MAINTENANCE` | `VARCHAR(50)` | Maintenance classification or related information |
| `dwh_create_date` | `DATETIME2` | Date and time the record was created in the data warehouse; defaults to the current server date and time |

## Notes

- The `dwh_create_date` column is present in all six Silver tables. Its `DEFAULT GETDATE()` constraint supplies the current server date and time when an insert omits this column.
- `DATETIME2` stores date and time values with configurable fractional-second precision.
- The `sls_order_dt`, `sls_ship_dt`, and `sls_due_dt` columns are defined as `INT`. Their date formats should be verified against the source data.
- Column descriptions are inferred from the names and SQL definitions; confirm ambiguous fields against the source data dictionary.
