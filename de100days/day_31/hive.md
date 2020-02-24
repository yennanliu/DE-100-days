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
		(Basically, you are moving the data when you issue the LOAD command from the HDFS file location to the Hive warehouse directory)

	- External Table

- Partition

- Bucket

## Ref 
- https://www.edureka.co/blog/hive-tutorial/