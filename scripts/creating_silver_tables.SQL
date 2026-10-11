IF OBJECT_ID ('silver.crm_cust_info') IS NOT NULL
	DROP TABLE silver.crm_cust_info

CREATE TABLE silver.crm_cust_info (
	cst_id INT,
	cst_key NVARCHAR (50),
	cst_firstname NVARCHAR (50),
	cst_lastname NVARCHAR (50),
	cst_material_status NVARCHAR (50),
	cst_gndr NVARCHAR (50),
	cst_create_date DATE,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID ('silver.crm_prd_info') IS NOT NULL
	DROP TABLE silver.crm_prd_info

CREATE TABLE silver.crm_prd_info (
  prd_id INT,
  prd_key VARCHAR(50),
  prd_nm VARCHAR(50),
  prd_cost INT,
  prd_line VARCHAR(50),
  prd_start_dt DATE,
  prd_end_dt DATE,
  dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID ('silver.crm_sales_details') IS NOT NULL
	DROP TABLE silver.crm_sales_details

CREATE TABLE silver.crm_sales_details (
  sls_ord_num VARCHAR(50),
  sls_prd_key VARCHAR(50),
  sls_cust_id INT,
  sls_order_dt INT,
  sls_ship_dt INT,
  sls_due_dt INT,
  sls_sales INT,
  sls_quantity INT,
  sls_price INT,
  dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID ('silver.erp_CUST_AZ12') IS NOT NULL
	DROP TABLE silver.erp_CUST_AZ12
  
CREATE TABLE silver.erp_CUST_AZ12 (
  CID VARCHAR(50),
  BDATE DATE,
  GEN VARCHAR(50),
  dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID ('silver.erp_LOC_A101') IS NOT NULL
	DROP TABLE silver.erp_LOC_A101

CREATE TABLE silver.erp_LOC_A101 (
  CID VARCHAR(50),
  CNTRY VARCHAR(50),
  dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

IF OBJECT_ID ('silver.erp_PX_CAT_G1V2') IS NOT NULL
	DROP TABLE silver.erp_PX_CAT_G1V2

CREATE TABLE silver.erp_PX_CAT_G1V2 (
  ID VARCHAR(50),
  CAT VARCHAR(50),
  SUBCAT VARCHAR(50),
  MAINTENANCE VARCHAR(50),
  dwh_create_date DATETIME2 DEFAULT GETDATE()
);
