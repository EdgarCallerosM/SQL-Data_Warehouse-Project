# SQL-Project
In this project, we create a Data WareHouse inside SQL Server Managemnet Studio following the three layer process proposed by Baraa Khatib Salkini. These three layers are:

1. Bronze layer
2. Silver layer
3. Gold layer

In the Bronze layer, we extract the raw data from the sources as it is. We do not do any cleaning or transformations. The names of tables and columns are kept exactly the same as the source. The main object type in this layer are tables.

In the Silver layer, we do the data cleaning and transforming. If necessary, we also do data enrichment and create calculated columns. The names of tables and columns are kept exactly the same as in the Bronze layer.  

Finally, in the Gold layer, we do aggregations and Join tables to create tables that are ready to be used for analysis. These are the objects that data analysts and business intelligence analysts will be using for their reports. The main object type in this layer are Views. 

