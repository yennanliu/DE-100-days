# Day 32 - NoSQL

<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/type_of_nosql_db.png" width="800" height="400"></p>

## Property of NoSQL
- Design Simplicity
- Horizontal Scaling
- High Availability (HA)

## Type of NoSQL
- Key-value (KV) store 
	- [Redis](https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/redis.md)
	- All of the data within database consists of an indexed key and a value. A key may correspond to one or multiple values (`hash table`). Provides a great performance and can be very easily scaled as per business needs.
- Document oriented
	- MongoDB
	- The data record is the JSON/XML representation of key-value pairs. Every record can have a different set of fields.
Document DBs are similar to Key-value pairs, But the difference is that the key is associated with a document
- Column oriented 
	- [Hbase](https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/hbase.md), Big-table, [Cassandra](https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra.md)
	- Data is stored in cells are grouped in columns of data rather than as rows of data. Columns are logically grouped into column families. One row may have one or multiple data records, which is indexed by a partition key.
- Graph oriented 
	- Neo4j
	- The type of NoSQL database in which a flexible graphical representation is used. The key purpose is to store relationships between nodes.

## CAP theorem
- `Consistency, Availability & Partition -Tolerance`
- A service can only reach `two of the three` of the metric above
- i.e. 
	- Consistency + Availability : Mysql
	- Consistency + Partition -Tolerance  :  Hbase, MongoDB
	- Availability + Partition -Tolerance : Cassandra 

<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/DB_CAP_trade_off.png" width="800" height="400"></p>

## Document oriented : HBase VS Cassandra 
- `HBase` is modelled on `BigTable (Google)` while `Cassandra` is based on ` DynamoDB (Amazon)` initially developed by Facebook.
- HBase leverages Hadoop infrastructure (HDFS, ZooKeeper) while Cassandra evolved separately but you can combine Hadoop and Cassandra as per your needs.
- HBase has several components which communicate together like HBase HMaster, ZooKeeper, NameNode, Region Severs. While Cassandra is a single node type, in which all nodes are equal and performs all functions. Any node can be the coordinator; this removes Single Point of failure.
- HBase is optimized for read and supports single writes, which leads to strict consistency. HBase supports Range based scans, which makes scanning process faster. Whereas Cassandra supports single row reads which maintains eventual consistency.
- Cassandra does not support range based row scans, which slows the scanning process as compared to HBase.
- HBase supports ordered partitioning, in which rows of a Column Family are stored in RowKey order, whereas in Casandra ordered partitioning is a challenge. Due to RowKey partitioning the scanning process is faster in HBase as compared to Cassandra.
- HBase does not support read load balancing, one Region Server serves the read request and the replicas are only used in case of failure. While Cassandra supports read load balancing and can read the same data from various nodes. This can compromise the consistency.
- In `CAP (Consistency, Availability & Partition -Tolerance)` theorem : 
	- HBase maintains Consistency and Partition -Tolerance 
	- Cassandra focuses on Availability and Partition -Tolerance.
