## [DATA ENGINEER 100 DAYS](https://github.com/yennanliu/DE-100-days/tree/master/de100days)

### CONTEXTS 

#### Part 1 : Basic DE tools 
1. Day01 - Data engineering intro 
2. Day02 - Progamming language basics : Python 
3. Day03 - Progamming language basics : Scala 
4. Day04 - Script basics : Bash
5. [Day05 - SQL basic, DDL, DQL, DML, DCL and TCL Commands](https://github.com/yennanliu/DE-100-days/blob/master/de100days/Day_05/sql_basic.md)

#### Part 2 : Basic concepts  
6.  Day06 - Where're the data come from ? type of data source 
7.  Day07 - What kind of the data ? type of data 
8.  Day08 - How to process/fetch the data ?  type of pipeline 
9.  Day09 - How to save the data ? type of data storage 
10. Day10 - How to get the data ? type of query 

#### Part 3 : Basic system  
11. Day11 - Common data systems VS backend systems in company
12. Day12 - Common data analytics systems (OLTP, ALTP...)
13. Day13 - Database / Datamart / Datawarehouse / DataLake
14. Day14 - Reporting tools
15. Day15 - ETL framework, concepts

#### Part 4 : Implementation part I : Data Model  
16. Day16 - Pattern of data model : choose the right data model
17. [Day17 - Build the tables : primary/foreign key index & DB migration](https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_17/build_table_db_migration.md)
18. [Day18 - Case I : Design data model for an e-commerce Startup](https://github.com/yennanliu/DE-100-days/blob/master/de100days/day_18/data_model_design.md)
19. [Day19 - Re-build the tables : normalization I, II, III, data cleaning....](https://github.com/yennanliu/DE-100-days/blob/master/de100days/Day_19/db_normalization.md)
20. Day20 - Case II : Re-design the data model ( e-commerce Startup)

#### Part 5 : Implementation part II : ETL 
21. Day21 - Workflow of process : ETL design
22. Day22 - Build a simple ETL: extract -> transform -> load    
23. Day23 - Monitor the ETL jobs : log/job state/job DB
24. Day24 - Get with ETL framework : Airflow
25. Day25 - Build the ETL with framework : Airflow

#### Part 6 : Database I : database low level op & tune
26. Day26 - How does/what mode hard-disk save/scan/update data ? 
27. Day27 - DB data structure / algorithm    
28. Day28 - Analyze SQL : underlying operation when DB runs an quer
29. Day29 - DB partition, sharding, replication, performance tune..
30. Day30 - DB configuration/metrics/performance...

#### Part 7 : Database II : SQL/No-SQL (key-value)/cached DB
31. Day31 - Relational DB (SQL) : Mysql/Postgresql
32. Day32 - Non Relational DB (No-SQL) : MongoDB
33. Day33 - KV (key-value) DB : Redis
34. Day34 - Case I : Save/query schema/schema-less data via SQL/No-SQL
35. Day35 - Case II : Save/query temp data at Redis, and sync it to Mysql  

#### Part 8 : System design
36. Day36 - Design concept / Basic pattern
37. Day37 - Evaluate system performance : response-time/latency-time, QPS..
38. Day38 - Scaling system : horizontal scaling / vertical scaling ...
39. Day39 - Case I : Design an ecommerce data backend 
40. Day40 - Case II : Design an online-game batch leaderboard

#### Part 9 : Big data I
41. Day41 - Big data & Hadoop ecosystem intro : Hadoop/Ambari/Hive/Pig/Hbase/Presto/Spark/Zookeeper/Sqoop...
42. Day42 - Hadoop intro : commands / HDFS file system op / work with HDFS data
43. Day43 - Hive intro : commands / work with HDFS data via Hive 
44. Day44 - Pig intro : commands / work with HDFS data via Pig 
45. Day45 - Hbase intro : commands / work with HDFS data via Hbase 
45-extra-1. - Build a Hadoop infra : Ambari + Hadoop + Hive + Mysql + sqoop 

#### Part 10 : Big data II
46. Day46 - Spark intro I: basic commands / core concepts / RDD / worker, driver, Master
47. Day47 - Spark intro II: init Spark, make it parallel, partition, re-partition
48. Day48 - Spark intro III: Spark data API RDD/dataframe/SparkSQL, Transformations/Actions 
49. Day49 - Spark intro IV: Spark function, submit a spark job 
50. Day50 - Spark intro VI: Spark ETL, Spark interact with DB/datalake/csv...

#### Part 11 : Implementation : Big data
51. Day 51 - Design a Framework process NYC Taxi data
52. Day 51 - ETL : pre-process data into datalake
53. Day 53 - ETL : transform data (cache it) load into datalake
54. Day 54 - Optimize/Scale above ETL
55. Day 55 - ETL : datalake -> database

#### Part 12 : Scaling system (Horizontal and Vertical)
56. [Day 56 - DB Partition](https://github.com/yennanliu/DE-100-days/blob/master/de100days/Day_56/db_partition.md) 
57. Day 57 - DB sharding 
58. Day 58 - DB replicaiton (replica) 
59. Day 59 - Leader-leader/Leader-follower/No Leader framework  
60. Day 60 - Other scaling strategy  

#### Part 13 : Distributed system 
61. Day 56 - Framework : Leader/Follower, Leader-Leader, 
62. Day 57 - Latency
63. Day 58 - Memory Access
64. Day 59 - Partial failure and concurrency
65. Day 60 - Case I : Design a Web app with leader-follower DB backend

#### Part 14 : Streaming data ( V.S. batch data)
66. Day 66 - Streaming data properties : time window, recency, ordering.. 
67. Day 67 - Work with streaming data : simple fetch/digest/collect
68. Day 68 - Storage steaming data : cache, No-SQL, No schema file system 
69. Day 69 - steaming data -> batch data
70. Day 70 - Case I : Design a process report real-time data and save them

#### Part 15 : Process streaming data : Kafka, RabbitMQ, Kinesis, Pubsub 
71. Day 71 - Concept of digest streaming data 
72. Day 72 - Kafka VS RabbitMQ VS Kinesis VS Pubsub 
73. Day 73 - Set up Kafka 
74. Day 74 - Set up AWS Kinesis 
75. Day 75 - Case II : Fetch event data via Kafka, Kinesis
75-extra-1. - Kafka Producers, Topics, Consumers, Consumer Groups
75-extra-2. - Kafka Clusters, Brokers, Partitions, Replicas, Leaders, and Followers
75-extra-3. - Kafka managment

#### Part 16 : Streaming system design: latency, response, load-balance
76. Day 76 - What's a good streaming system
77. Day 77 - Streaming system metrics  
78. Day 78 - Monitor streaming system : log 
79. Day 79 - system load-balance 
80. Day 80 - Case III : Design a event collect system via Kinesis, elasticsearch, and mysql 

#### Part 17 : Implementation I : streaming system for an online game  
81. Day 81 - Case I : system design : online game stream system
82. Day 82 - Stream via confluent/Kafka  
83. Day 83 - Stream log to Nosql/Datalake
84. Day 84 - ETL on Stream log to DB/DW 
85. Day 85 - Case V : Design a event collect system via Kinesis/confluent, elasticsearch, and mysql  

#### Part 18 : Lambda architecture (Streaming system + Batch system)
- dev 

#### Part 19 : Kappa architecture 
- dev 

#### Part 20 : Conclusion   
- dev 
