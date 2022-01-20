# 1.3.2.2 Normalisation
## Introduction
Desired characteristics of a database include efficiency and ease of maintenance
Redundant data should be avoided
Normalisation aims to:
- Organise the data efficiently
- Eliminate redundant data
- Ensure that only related data are stored in a table
## Unnormalised
- There are no rules placed on unnormalised databases
## First Normal Form
- There are no columns with repeated or similar data
- Each data item cannot be broken down any further
- Each row is unique
- Each field has a unique name
## Second Normal Form
- The table must already be in *__First Normal Form__*
- Non-key attributes must depend on every part of the primary key
## Third Normal Form
- The table must already be in *__Second Normal Form__*
- There are no non-key attributes that depend on another non-key attribute
## Benefits
### Storage
- The database does not have redundant data
- There is no data duplication
### Integrity
- One change can instantly be cascaded across related records
- There is no data duplication
### Searching
- Faster query times