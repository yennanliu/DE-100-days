# Day 32 - NoSQL

## Type of NoSQL
	- Key-value (KV) store
	- Document oriented
	- Column oriented
	- Graph oriented

## Key-value (KV) store

## Document oriented : HBase VS Cassandra 
- HBase is modelled on BigTable (Google) while Cassandra is based on DynamoDB (Amazon) initially developed by Facebook.
- HBase leverages Hadoop infrastructure (HDFS, ZooKeeper) while Cassandra evolved separately but you can combine Hadoop and Cassandra as per your needs.
- HBase has several components which communicate together like HBase HMaster, ZooKeeper, NameNode, Region Severs. While Cassandra is a single node type, in which all nodes are equal and performs all functions. Any node can be the coordinator; this removes Single Point of failure.
- HBase is optimized for read and supports single writes, which leads to strict consistency. HBase supports Range based scans, which makes scanning process faster. Whereas Cassandra supports single row reads which maintains eventual consistency.
- Cassandra does not support range based row scans, which slows the scanning process as compared to HBase.
- HBase supports ordered partitioning, in which rows of a Column Family are stored in RowKey order, whereas in Casandra ordered partitioning is a challenge. Due to RowKey partitioning the scanning process is faster in HBase as compared to Cassandra.
- HBase does not support read load balancing, one Region Server serves the read request and the replicas are only used in case of failure. While Cassandra supports read load balancing and can read the same data from various nodes. This can compromise the consistency.
- In `CAP (Consistency, Availability & Partition -Tolerance)` theorem HBase maintains Consistency and Availability while Cassandra focuses on Availability and Partition -Tolerance.
