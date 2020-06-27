# DB Data structure / Algorithm / Index


## DB Data structure

## DB Algorithm

## DB Index
- https://en.wikipedia.org/wiki/Database_index#Index_architecture_and_indexing_methods
- A database index is a data structure that improves the speed of data retrieval operations on a database table at the cost of additional writes and storage space to maintain the index data structure. Indexes are used to quickly locate data without having to search every row in a database table every time a database table is accessed. Indexes can be created using one or more columns of a database table, providing the basis for both rapid random lookups and efficient access of ordered records.
- An index is a copy of selected columns of data from a table, called a database key or simply key, that can be searched very efficiently that also includes a low-level disk block address or direct link to the complete row of data it was copied from. Some databases extend the power of indexing by letting developers create indexes on functions or expressions. For example, an index could be created on upper(last_name), which would only store the upper-case versions of the last_name field in the index. Another option sometimes supported is the use of partial indices, where index entries are created only for those records that satisfy some conditional expression. A further aspect of flexibility is to permit indexing on user-defined functions, as well as expressions formed from an assortment of built-in functions.

- Usage 
	- Support for fast lookup
	- Policing the database constraints

- Index architecture and indexing methods
	- Clustered
		- Make index based on original data ordering, i.e. `original data : 1,2,3..100` -> `clustered index : page 1 : 1,2..10, page 2 : 11,12...20... page 10 : 91...100`
		- Each table only has 1 clustered index
		- pros : better query efficiency with this type of index
		- cros : hard to maintain (if new data coming, the index has to be rebalanced/updated)
	- Non-clustered
		- Based on the "layer/location" of the `data structure (heap/tree..)` the data points located in. If `heap`, then the Non-clustered is the heap index ; if `cluster`, then the Non-clustered is cluster index
		- Each table can has multiple Non-clustered index
		- pros : easy to maintain
		- cros : query efficiency is not good (data point is not ordering in the Non-clustered index, so have to scan all indexes for data search)
	- http://www.woolycsnote.tw/2015/12/37-clustered-index-non-clustered-index.html#:~:text=%E9%80%99%E5%85%A9%E5%80%8BIndex%20%E6%9C%89,%E8%B3%87%E6%96%99%E6%8E%92%E5%88%97%E9%A0%86%E5%BA%8F%E8%80%8C%E5%BB%BA%E7%AB%8B%EF%BC%8E
	- https://www.red-gate.com/simple-talk/sql/learn-sql-server/sql-server-index-basics/
	- https://docs.microsoft.com/zh-tw/sql/relational-databases/indexes/clustered-and-nonclustered-indexes-described?view=sql-server-ver15
