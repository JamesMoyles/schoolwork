# 1.3.2.1 Databases
## Introduction
Databases are collections of data or information that is organised
Data has no meaning it is just a value
They allow data to be stored and searched for
## Hierarchy of a Database
Within a database there are one or more tables
Rows in a table are called records
Columns in a table are called fields
A record is made up of a number of pieces of information that are all related
## Types of Database
### Flat File Database
Consists of a single table which stores all the data in the database
Easy to set up and can be made in spreadsheet software
This may result in data duplication and so flat file databases tend to require more storage than relational databases
### Relational Databases
Consists of a number of linked tables
Each table contains records about a particular entity
Once tables are set up, a relationship can be created to link them
The arrangement of the tables is known as a relational database
Data does not have to be duplicated making them smaller in size
Reduces the risk of mistakes with data inputting
## Keys
### Primary Key
The primary key is a unique field in a table
#### Simple Key
Simple keys are made up of a single field and are unique
An example of a simple key might be a customer ID as all IDs are different
#### Compound/Composite Key
Compound keys comprise of more than one single field
The combination of all the fields allows the key to be unique
|Suit|Value|Times Played|
|-|-|-|
|Hearts|One|5|
|Diamonds|Three|2|
|Clubs|Ten|3|
The combination of the fields allows to create a unique card
### Secondary Key
Made on a field that you would like to be indexed faster for searches
A table may have more than one secondary key
When databases become large faster indexing becomes very important
These fields are searched more efficiently
An example of a secondary key might be a surname or an account number
You do not want to have a secondary key on every field as the index takes up a lot of storage
### Foreign Key
A foreign key links tables together and creates a relationship
A field in one table is linked to the primary key in another
The foreign key is the field in the 'many' relationship table that links to the other table's primary key
#### Referential Integrity
Ensuring that you cannot delete records that are used by other tables
Each foreign key should have the same value as the corresponding primary key
This ensures that there are not records that are unlinked to tables
Referential integrity may be enforced on a table
Referential integrity can be used to delete related records upon a record deletion
> This may be dangerous