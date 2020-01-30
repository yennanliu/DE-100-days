# Day 19 - DB (SQL) normalization

### PROCESS (DB normalization) 
```
First Normal Form (1NF) -> Second Normal Form (2NF) -> Third Normal Form (3NF) -> Fourth Normal Form (4NF) -> Fifth Normal Form (5NF)
```
### First Normal Form (1NF)
- Each table cell should contain a single value.
- Each record needs to be unique.

### Second Normal Form (2NF)
- Must Be in `1NF` already
- Single Column Primary Key
- The entity should be considered already in 1NF, and all attributes within the entity should depend solely on the unique identifier of the entity.

### Third Normal Form (3NF)
- Must Be in `2NF` already
- Has no transitive functional dependencies

### Boyce-Codd Normal Form (BCNF) (3.5NF)

### Fourth Normal Form (4NF) 

### Fifth Normal Form (5NF)

### Data cleaning

### Concepts 
- Primary Key
    - A primary is a single column value used to identify a database record uniquely.
    - A primary key cannot be NULL
    - A primary key value must be unique
    - The primary key values should rarely be changed
    - The primary key must be given a value when a new record is inserted.

- Composite key 
    - A composite key is a primary key composed of multiple columns used to identify a record uniquely

- Foreign Key
    - Foreign Key references the primary key of another Table! It helps connect your Tables
    - A foreign key can have a different name from its primary key
    - It ensures rows in one table have corresponding rows in another
    - Unlike the Primary key, they do not have to be unique. Most often they aren't
    - Foreign keys can be null even though primary keys can not 

- Transitive functional dependencies
    - A transitive functional dependency is when changing a non-key column, might cause any of the other non-key columns to change


### Ref 
- DB normalization
 - https://www.guru99.com/database-normalization.html
 - https://www.w3schools.in/dbms/database-normalization/
 - https://www.studytonight.com/dbms/database-normalization.php
 - https://www.w3schools.in/dbms/database-normalization/
 - https://hackr.io/blog/dbms-normalization
