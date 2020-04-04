# Cassandra intro

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

## *Components of Cassandra*
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

## What is a Column Family?
- A column family is a container for an ordered collection of rows, each of which is itself an ordered collection of columns. We can freely add any column to any column family at any time, depending on your needs. The comparator value indicates how columns will be sorted when they are returned to you in a query.

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
