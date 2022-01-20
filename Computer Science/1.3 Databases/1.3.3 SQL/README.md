# SQL
## Keywords
### SELECT
Used to make queries and select certain records
```sql
SELECT columns FROM tblName;
```
### INSERT
Used to insert values into a table
```sql
INSERT INTO tblName(columnNames)
    VALUES
    (attrValues),
    (attrValues)
    ...;
```

### CREATE
Create a table or a database
#### Tables
```sql
CREATE TABLE tblName(
    tblID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    anotherTblID INT UNSIGNED NOT NULL,
    PRIMARY KEY (tblID),
    FOREIGN KEY (anotherTblID) REFERENCES anotherTbl (anotherTblID)
)
```
#### Databases
```sql
CREATE DATABASE dbName;
```

### DROP
Delete a table or a database
#### Table
```sql
DROP TABLE tblName;
```
#### Database
```sql
DROP DATABASE dbName;
```
