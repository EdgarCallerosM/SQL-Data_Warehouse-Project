# Gold Layer 

The Gold layer contains business-ready views structured for analytical queries and reporting. It includes customer and product dimension views, along with a sales fact view. The data-schema used is a star-schema.

## 1. Data model

<img width="3008" height="1800" alt="Data_Model" src="https://github.com/user-attachments/assets/66ab81c3-2593-4501-8062-d6694a58b2b2" />

## 2. Data dictionary

### 1. `gold.dim_customers`

**Description:** Customer dimension view combining CRM customer information with ERP customer birth dates, gender, and country data.

| Column Name | Data Type | Description |
|---|---|---|
| `customer_key` | `BIGINT` | Generated surrogate key assigned using `ROW_NUMBER()` ordered by customer ID |
| `customer_id` | `INT` | Customer identifier from the CRM system |
| `customer_number` | `NVARCHAR(50)` | Customer business key or reference code |
| `first_name` | `NVARCHAR(50)` | Customer's first name |
| `last_name` | `NVARCHAR(50)` | Customer's last name |
| `cuntry` | `VARCHAR(50)` | Customer's country from the ERP location table; the column alias appears to be a typo for `country` |
| `marital_status` | `NVARCHAR(50)` | Customer's standardized marital status |
| `gender` | `VARCHAR(50)` | Customer's gender from the CRM table when available; otherwise, uses the ERP gender or `n/a` |
| `birthdate` | `DATE` | Customer's birth date from the ERP customer table |
| `create_date` | `DATE` | Date the customer record was created in the CRM source system |

### 2. `gold.dim_products`

**Description:** Product dimension view combining current CRM product records with ERP category information. Historical product versions are excluded by filtering for records whose end date is null.

| Column Name | Data Type | Description |
|---|---|---|
| `product_key` | `BIGINT` | Generated surrogate key assigned using `ROW_NUMBER()` ordered by product start date and product business key |
| `product_id` | `INT` | Product identifier from the CRM system |
| `product_number` | `NVARCHAR(50)` | Product business key used to identify the product |
| `product_name` | `NVARCHAR(50)` | Product name |
| `category_id` | `NVARCHAR(50)` | Identifier of the product category |
| `category` | `VARCHAR(50)` | Product category from the ERP category table |
| `subcategory` | `VARCHAR(50)` | Product subcategory from the ERP category table |
| `maintenance` | `VARCHAR(50)` | Maintenance classification from the ERP category table |
| `cost` | `INT` | Product cost |
| `product_line` | `NVARCHAR(50)` | Standardized product line |
| `start_date` | `DATE` | Date the current product version became valid |

### 3. `gold.fact_sales`

**Description:** Sales fact view containing order-level or order-line-level sales measures, dates, and references to the customer and product dimensions.

| Column Name | Data Type | Description |
|---|---|---|
| `order_number` | `VARCHAR(50)` | Sales order number |
| `product_key` | `BIGINT` | Surrogate key referencing the product dimension |
| `customer_key` | `BIGINT` | Surrogate key referencing the customer dimension |
| `order_date` | `DATE` | Date the sales order was placed |
| `shipping_date` | `DATE` | Date the order was shipped |
| `due_date` | `DATE` | Due date associated with the sales order |
| `sales_amount` | `INT` | Sales amount for the order line |
| `quantity` | `INT` | Quantity of products sold |
| `price` | `INT` | Unit price of the product |

