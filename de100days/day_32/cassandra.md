# Cassandra INTRO

## What is Apache Cassandra?
- Apache Cassandra is a free and open-source distributed NoSQL database management system designed to handle large amounts of data across many commodity servers, providing high availability with no single point of failure.
- It is scalable, fault-tolerant, and consistent.
- It is a column-oriented database.
- Its distribution design is based on `Amazon’s DynamoDB` and its data model on `Google’s Bigtable`.
- Created at Facebook, it differs sharply from relational database management systems.
- Cassandra implements a Dynamo-style replication model with no single point of failure, but adds a more powerful “column family” data model.
- Cassandra is being used by some of the biggest companies such as Facebook, Twitter, Cisco, Rackspace, ebay, Twitter, Netflix, and more.

## Features of Apache Cassandra?
- Elastic scalability − Cassandra is highly scalable; it allows to add more hardware to accommodate more customers and more data as per requirement.
- Always on architecture − Cassandra has no single point of failure and it is continuously available for business-critical applications that cannot afford a failure.
- Fast linear-scale performance − Cassandra is linearly scalable, i.e., it increases your throughput as you increase the number of nodes in the cluster. Therefore it maintains a quick response time.
- Flexible data storage − Cassandra accommodates all possible data formats including: structured, semi-structured, and unstructured. It can dynamically accommodate changes to your data structures according to your need.
- Easy data distribution − Cassandra provides the flexibility to distribute data where you need by replicating data across multiple data centers.
- Transaction support − Cassandra supports properties like Atomicity, Consistency, Isolation, and Durability (ACID).
- Fast writes − Cassandra was designed to run on cheap commodity hardware. It performs blazingly fast writes and can store hundreds of terabytes of data, without sacrificing the read efficiency.

## Cassandra - Architecture
- The design goal of Cassandra is `to handle big data workloads across multiple nodes without any single point of failure`. Cassandra has `peer-to-peer` distributed system across its nodes, and data is distributed among all the nodes in a cluster.
- `All the nodes in a cluster play the same role`. Each node is `independent` and at the `same time interconnected` to other nodes.
- `Each node in a cluster can accept read and write requests`, regardless of where the data is actually located in the cluster.
- When a node goes down, read/write requests can be served from other nodes in the network.

## Data Replication in Cassandra
- In Cassandra, one or more of the nodes in a cluster act as replicas for a given piece of data. If it is detected that some of the nodes responded with an out-of-date value, Cassandra will return the most recent value to the client. After returning the most recent value, Cassandra performs a read repair in the background to update the stale values.
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_replication.jpg" width="800" height="400"></p>

## Components of Cassandra
- Node 
	− It is the place where data is stored.
- Data center 
	− It is a collection of related nodes.
- Cluster 
	− A cluster is a component that contains one or more data centers.
- Commit log 
	− The commit log is a crash-recovery mechanism in Cassandra. Every write operation is written to the commit log.
- Mem-table 
	− A mem-table is a memory-resident data structure. After commit log, the data will be written to the mem-table. Sometimes, for a single-column family, there will be multiple mem-tables.
- SSTable 
	− It is a disk file to which the data is flushed from the mem-table when its contents reach a threshold value.
- Bloom filter 
	− These are nothing but quick, nondeterministic, algorithms for testing whether an element is a member of a set. It is a special kind of cache. Bloom filters are accessed after every query.

## Cassandra Read & Write 
- Write Operations
	- Every write activity of nodes is captured by the commit logs written in the nodes. Later the data will be captured and stored in the mem-table. Whenever the mem-table is full, data will be written into the SStable data file. All writes are automatically partitioned and replicated throughout the cluster. Cassandra periodically consolidates the SSTables, discarding unnecessary data.
- Read Operations
	- During read operations, Cassandra gets values from the mem-table and checks the bloom filter to find the appropriate SSTable that holds the required data.

## Cassandra - Data Model
- https://www.tutorialspoint.com/cassandra/cassandra_data_model.htm
- Cluster
	- Cassandra database is distributed over several machines that operate together. The outermost container is known as the Cluster. For failure handling, every node contains a replica, and in case of a failure, the replica takes charge. Cassandra arranges the nodes in a cluster, in a ring format, and assigns data to them.
- Keyspace
	- Keyspace is the outermost container for data in Cassandra. The basic attributes of a Keyspace in Cassandra are −

	- Replication factor − It is the number of machines in the cluster that will receive copies of the same data.

	- Replica placement strategy − It is nothing but the strategy to place replicas in the ring. We have strategies such as 
		- simple strategy (rack-aware strategy)
		- old network topology strategy (rack-aware strategy) 
		- network topology strategy (datacenter-shared strategy).
	- Column families − Keyspace is a container for a list of one or more column families. A column family, in turn, is a container of a collection of rows. Each row contains ordered columns. Column families represent the structure of your data. Each keyspace has at least one and often many column families.

<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_keyspace_colfamily.jpg" width="800" height="400"></p>

- Column Family
	- A column family is a container for an ordered collection of rows. Each row, in turn, is an ordered collection of columns. The following table lists the points that differentiate a column family from a table of relational databases.
	- In Cassandra, although the column families are defined, the columns are not. You can freely add any column to any column family at any time.
	- In Cassandra, a table contains columns, or can be defined as a super column family.


## What is a Column Family?
- A column family is a container for an ordered collection of rows, each of which is itself an ordered collection of columns. We can freely add any column to any column family at any time, depending on your needs. The comparator value indicates how columns will be sorted when they are returned to you in a query.

- A Cassandra column family has the following attributes −
	- keys_cached − It represents the number of locations to keep cached per SSTable.
	- rows_cached − It represents the number of rows whose entire contents will be cached in memory.
	- preload_row_cache − It specifies whether you want to pre-populate the row cache.
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_column_family.jpg" width="800" height="400"></p>

- Column
	- A column is the basic data structure of Cassandra with three values, namely key or column name, value, and a time stamp. Given below is the structure of a column.
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_column.jpg" width="400" height="300"></p>

- SuperColumn
	- A super column is a special column, therefore, it is also a key-value pair. But a super column stores a map of sub-columns.
	- Generally column families are stored on disk in individual files. Therefore, to optimize performance, it is important to keep columns that you are likely to query together in the same column family, and a super column can be helpful here.Given below is the structure of a super column.
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_super_column.jpg" width="400" height="300"></p>

## Data Models : Cassandra VS RDBMS
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/dbmodel_RDBMS_cassandra.png" width="800" height="400"></p>

##  What is a Row in Cassandra? What are the different elements of it?
- A row is a collection of sorted columns. It is the smallest unit that stores related data in Cassandra. Any component of a Row can store data or metadata
- The different elements/parts of a row are the
	- Row Key
	- Column Keys
	- Column Values

## How does Cassandra perform Read operation?
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_read.png" width="300" height="400"></p>
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_read2.png" width="800" height="400"></p>

## Ref
- https://www.tutorialspoint.com/cassandra/cassandra_introduction.htm
- https://www.edureka.co/blog/interview-questions/cassandra-interview-questions/
- https://www.guru99.com/cassandra-tutorial.html
