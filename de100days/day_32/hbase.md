# Hbase Intro

## Feature of Hbase

## Hbase Use case
- We should use HBase where we have large data sets (millions or billions or rows and columns) and we require fast, random and real time, read and write access over the data.
- The data sets are distributed across various clusters and we need high scalability to handle data.
- The data is gathered from various data sources and it is either semi structured or unstructured data or a combination of all. It could be handled easily with HBase.
- You want to store column oriented data.
- You have lots of versions of the data sets and you need to store all of them.

## Hbase VS HDFS

- HDFS :
	-  A `file system`. An underlying storage system for storing the data in the distributed environment. 
	- provide `high` latency when access data
	- support supports WORM (Write once Read Many or Multiple times).
	- can stores any kind of data (i.e. structured, semi-structured and unstructured) 
	- stores data in `row based`

- Hbase:
	- A `No-sql database`. 
	- provide `latency access small data over large data`
	- supports `random read and write` 
	- can stores any kind of data (i.e. structured, semi-structured and unstructured) 
	- stores data in the `column oriented manner` manner (`where each column is stored together`), so can fetch the data very fast (real-time)

- In gerenral case, `HBase` is built on `top of` `HDFS`. So we can leverage on the combination of them, and get the benefit from both as well.

## HBase Data Model

- Row-oriented vs column-oriented Database
	- Row-oriented databases store table records in a sequence of rows. 
	- Column-oriented databases store table records in a sequence of columns, the entries in a column are stored in contiguous locations on disks.

- Column-oriented Database:
	- `low-latency`, `large data set`, `semi-structured or unstructured` 

- Row-oriented Databases:
	- transactional properties (`ACID` properties)
	- need to perform `complex calculation` (e.g. join, groupby...)

<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/hbase_components.png" width="800" height="400"></p>

- Tables: Data is stored in a table format in HBase. But here tables are in column-oriented format.
- `Row Key`: Row keys are used to search records which make searches fast. 
- `Column Families`: Various columns are combined in a column family. These column families are stored together which makes the searching process faster because data belonging to same column family can be accessed together in a single seek.
- Column Qualifiers: Each column’s name is known as its column qualifier.
- Cell: Data is stored in cells. The data is dumped into cells which are specifically identified by rowkey and column qualifiers.
- `Timestamp`: Timestamp is a combination of date and time. `Whenever data is stored, it is stored with its timestamp`. This makes easy to search for a particular `version of data`.

- In brief, HBase consists of:
	- Set of tables
	- Each table with column families and rows
	- Row key acts as a Primary key in HBase.
	- Any access to HBase tables uses this Primary Key
	- Each column qualifier present in HBase denotes attribute corresponding to the object which resides in the cell.

## HBase Architecture and it’s Components
## HBase Write Mechanism
## HBase Read Mechanism
## HBase Performance Optimization Mechanisms

## Ref
- https://www.edureka.co/blog/hbase-tutorial
- https://www.edureka.co/blog/hbase-architecture/
