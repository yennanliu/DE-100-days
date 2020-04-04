# Cassandra intro

## What is Apache Cassandra?
- Apache Cassandra is a free and open-source distributed NoSQL database management system designed to handle large amounts of data across many commodity servers, providing high availability with no single point of failure.

## Features of Apache Cassandra?

## What is a Column Family?
- A column family is a container for an ordered collection of rows, each of which is itself an ordered collection of columns. We can freely add any column to any column family at any time, depending on your needs. The comparator value indicates how columns will be sorted when they are returned to you in a query.

##  What is a Row in Cassandra? What are the different elements of it?
- A row is a collection of sorted columns. It is the smallest unit that stores related data in Cassandra. Any component of a Row can store data or metadata
- The different elements/parts of a row are the
	- Row Key
	- Column Keys
	- Column Values

## How does Cassandra perform Read operation?
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_read.png" width="200" height="300"></p>
<p align="center"><img src ="https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_32/cassandra_read2.png" width="800" height="400"></p>

## Ref
- https://www.edureka.co/blog/interview-questions/cassandra-interview-questions/
