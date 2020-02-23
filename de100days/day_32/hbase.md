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

- Hbase:
	- A `No-sql database`. 
	- provide `latency access small data over large data`
	- supports random read and writes 
	- can stores any kind of data (i.e. structured, semi-structured and unstructured) 
	- stores data in the `column oriented manner` manner (`where each column is stored together`), so can fetch the data very fast (real-time)

- In gerenral case, `HBase` is built on `top of` `HDFS`. So we can leverage on the combination of them, and get the benefit from both as well.

## Case Study : FB messenger

## Ref
- https://www.edureka.co/blog/hbase-tutorial
- https://www.edureka.co/blog/hbase-architecture/
