## 1. `bronze.crm_cust_info`

| Column Name | Data Type | Description |
|---|---|---|
| `cst_id` | `INT` | Customer identifier |
| `cst_key` | `NVARCHAR(50)` | Customer business key or reference code |
| `cst_firstname` | `NVARCHAR(50)` | Customer's first name |
| `cst_lastname` | `NVARCHAR(50)` | Customer's last name |
| `cst_material_status` | `NVARCHAR(50)` | Customer's marital status (assuming `material` is a typo for `marital`) |
| `cst_gndr` | `NVARCHAR(50)` | Customer's gender |
| `cst_create_date` | `DATE` | Date the customer record was created |

## 2. `bronze.crm_prd_info`

| Column Name | Data Type | Description |
|---|---|---|
| `prd_id` | `INT` | Product identifier |
| `prd_key` | `VARCHAR(50)` | Product business key or reference code |
| `prd_nm` | `VARCHAR(50)` | Product name |
| `prd_cost` | `INT` | Product cost |
| `prd_line` | `VARCHAR(50)` | Product line or category designation |
| `prd_start_dt` | `DATE` | Start date of the product record or version |
| `prd_end_dt` | `DATE` | End date of the product record or version |

## 3. `bronze.crm_sales_details`

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

## 4. `bronze.erp_CUST_AZ12`

| Column Name | Data Type | Description |
|---|---|---|
| `CID` | `VARCHAR(50)` | Customer identifier from the ERP system |
| `BDATE` | `DATE` | Customer's birth date |
| `GEN` | `VARCHAR(50)` | Customer's gender |

## 5. `bronze.erp_LOC_A101`

| Column Name | Data Type | Description |
|---|---|---|
| `CID` | `VARCHAR(50)` | Customer identifier from the ERP system |
| `CNTRY` | `VARCHAR(50)` | Customer's country |

## 6. `bronze.erp_PX_CAT_G1V2`

| Column Name | Data Type | Description |
|---|---|---|
| `ID` | `VARCHAR(50)` | Product identifier or product key |
| `CAT` | `VARCHAR(50)` | Product category |
| `SUBCAT` | `VARCHAR(50)` | Product subcategory |
| `MAINTENANCE` | `VARCHAR(50)` | Maintenance classification or related information |
