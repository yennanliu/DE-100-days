# Hive intro

## General Idea

## Use case 

- Data Warehousing
- Ad-hoc Analysis
- ETL 

## Hive main component

- Hive Clients 
- Hive Services 
	- Metastore:
		- You can think metastore as a central repository for storing all the Hive metadata information.
		- Hive metadata includes various types of information like structure of tables and the partitions along with the column, column type, serializer and deserializer which is required for Read/Write operation on the data present in HDFS. 
		- The metastore comprises of two fundamental units:
			- A service that provides metastore access to other Hive services.
			- Disk storage for the metadata which is separate from HDFS storage

- Processing framework and Resource Management
- Distributed Storage


## Hive Data Model

- Table
	- Managed Table 
		- Hive is responsible for managing the data of a managed table. So, the data belonging to the dropped managed_table no longer exist anywhere in HDFS and you can’t retrieve it by any means. 
		- Basically, you are moving the data when you issue the LOAD command from the HDFS file location to the Hive warehouse directory

	- External Table

		- For external table, Hive is not responsible for managing the data. In this case, when you issue the LOAD command, Hive moves the data into its warehouse directory. Then, Hive creates the metadata information for the external table. 
		- If you issue a DROP command on the external table, only metadata information regarding the external table will be deleted. Therefore, you can still retrive the data of that very external table from the warehouse directory using HDFS commands.

- Partition
	- Hive organizes tables into partitions for grouping similar type of data together based on a column or partition key. Each Table can have one or more partition keys to identify a particular partition. This allows us to have a `faster query` on slices of the data.


- Bucket

## Ref 
- https://www.edureka.co/blog/hive-tutorial/