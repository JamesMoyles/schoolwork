# 1.3.4.1 Transactional Processing
## Capturing Data
Forms of inputting data in a computer system\
This could include typing hand written forms into a database\
This can also include automatic forms of data input such as scanners

## EDI
Electronic Data Interchange is the computer-to-computer exchange of documents such as purchase orders between two companies\
It replaces post and email\
All the documents must be in a standard format so that the computer can understand them\
EDI translation software may be used to translate the EDI format so the data can be input directly to a database

## Selecting Data
By using SQL, or similar, you can make queries that satisfy certain criteria

## Transaction Processing
A single logical operating in a database is called a transaction

## ACID
**A**tomicity **C**onsistency **I**solation **D**urability
These properties ensure that the integrity of the database is upheld in all circumstances and guarantees that all transactions will be processed reliably
### Atomicity
The transcation is either fully processed and completed or not completed at all\
For example, if there was a power cut, because only a part of the transaction is processed, the transaction will be dropped
### Consistency
This ensures that referential integrity is upheld in a database
### Isolation
This ensures that concurrent execution of transactions leads to the same result as if transactions were processed one after the other\
This is very important in a multi-user database
### Durability
This ensures that once a transaction has been commited, it will remain commited even in the case of a power cut or similar\
As each part of a transaction is complete, it is held in a buffer on disk until all elements of the transaction are completed\
Only then will the changes to the database actually be made

## Multi-User Databases
### Potential Problems
If 2 users are trying to write to the same file, one of them might be overwritten
### Record Locking
Prevents simeltaneous access to records in a database in order to prevent updates clashing and being lost\
Deadlocking is a potential problem with record locking
### Serialisation
The Database Managament System (DBMS) prevents situations such as record locking from arising\
It ensures that transactions do not overlap in time and cannot interfere with each other or lead to updates being lost\
There are two methods of Serialisation
#### Timestamp Ordering
Every object in the database will have a read and write timestamp\
These are updated whenever the object is read or written to\
If the read timestamp is not the same as it was when the transaction started, the DBMS knows that another user has accessed the same object, an error will be thrown and the transation cancelled
#### Commitment Ordering
Transactions are ordered in terms of dependencies and the time they were intiated\
It can prevent deadlocking as it blocks one request until another is completed

### Redundancy
Many Large companies have duplicates of their hardware in other geographical locations to ensure that if power goes down in one area for example, the system/service can get back up and running quickly again\
If this fails, the automatic backup system will run automatically and take over