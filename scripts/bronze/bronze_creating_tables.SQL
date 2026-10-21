IF OBJECT_ID ('bronze.crm_cust_info') IS NOT NULL
	DROP TABLE bronze.crm_cust_info

CREATE TABLE bronze.crm_cust_info (
	cst_id INT,
	cst_key NVARCHAR (50),
	cst_firstname NVARCHAR (50),
	cst_lastname NVARCHAR (50),
	cst_material_status NVARCHAR (50),
	cst_gndr NVARCHAR (50),
	cst_create_date DATE
);
GO

IF OBJECT_ID ('bronze.crm_prd_info') IS NOT NULL
	DROP TABLE bronze.crm_prd_info

CREATE TABLE bronze.crm_prd_info (
  prd_id INT,
  prd_key VARCHAR(50),
  prd_nm VARCHAR(50),
  prd_cost INT,
  prd_line VARCHAR(50),
  prd_start_dt DATE,
  prd_end_dt DATE
);
GO

IF OBJECT_ID ('bronze.crm_sales_details') IS NOT NULL
	DROP TABLE bronze.crm_sales_details

CREATE TABLE bronze.crm_sales_details (
  sls_ord_num VARCHAR(50),
  sls_prd_key VARCHAR(50),
  sls_cust_id INT,
  sls_order_dt INT,
  sls_ship_dt INT,
  sls_due_dt INT,
  sls_sales INT,
  sls_quantity INT,
  sls_price INT
);
GO

IF OBJECT_ID ('bronze.erp_CUST_AZ12') IS NOT NULL
	DROP TABLE bronze.erp_CUST_AZ12
  
CREATE TABLE bronze.erp_CUST_AZ12 (
  CID VARCHAR(50),
  BDATE DATE,
  GEN VARCHAR(50)
);
GO

IF OBJECT_ID ('bronze.erp_LOC_A101') IS NOT NULL
	DROP TABLE bronze.erp_LOC_A101

CREATE TABLE bronze.erp_LOC_A101 (
  CID VARCHAR(50),
  CNTRY VARCHAR(50)
);
GO

IF OBJECT_ID ('bronze.erp_PX_CAT_G1V2') IS NOT NULL
	DROP TABLE bronze.erp_PX_CAT_G1V2

CREATE TABLE bronze.erp_PX_CAT_G1V2 (
  ID VARCHAR(50),
  CAT VARCHAR(50),
  SUBCAT VARCHAR(50),
  MAINTENANCE VARCHAR(50)
);

