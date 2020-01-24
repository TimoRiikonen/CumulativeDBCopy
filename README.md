These scripts have been written by Timo Riikonen.

If you enhance these, I would appreciate if you would send you improvements to me.

Copyright: GNU Lesser General Public License, https://www.gnu.org/licenses/lgpl-3.0.en.html

What this does:
We have two databases ShortTermDatabaseName and LongTermDatabaseName. This script copies data from ShortTermDatabaseName to LongTermDatabaseName.

Basically we use this in environment where ShortTermDatabaseName is replicated from somewhere and we need to have another database for business intelligence purposes, which is called as LongTermDatabaseName.


REQUIREMENTS
- All tables must have unique id.
- MS SQL Server 2008+


DEVELOPMENT INSTALLATION
1) Create database "ShortTermDatabaseName". I suggest that you use this name for now, then you can execute other parts without changing them.
2) Create database "LongTermDatabaseName". I suggest that you use this name for now, then you can execute other parts without changing them.
3) Execute 00 DEV ONLY Create short term database tables.sql against both ShortTermDatabaseName and LongTermDatabaseName
4) Execute 02 lastUpdate trigger example.sql against ShortTermDatabaseName 
5) Execute 03 tableCreateCopyTimestamps.sql against LongTermDatabaseName 
6) Execute 04 cumulativeCopy.sql against ShortTermDatabaseName
7) Add data to ShortTermDatabaseName
8) Execute 04 cumulativeCopy.sql against ShortTermDatabaseName


PRODUCTION INSTALLATION
1) If you will create a full duplica of your original database, then create a script that creates (at least) tables

2) create LongTermDatabaseName database and create tables on it.

3) Add manually in SSMS following columns to all tables in ShortTermDatabaseName by using Design on each table:
	lastUpdate [datetime2](7) NULL,
We have tested this with SQL Server 2014 replication: Adding this column does not affect existing replication and replication will maintain this field.
If you already have a similar field, it should work either 99.9% or 100%, need to think about that more.

4) Change script 02
You are expected to change in all scripts terms like ShortTermDatabaseName as the database you are using, InsertTable1NameToHere as first table name you 
are copying, InsertTable1NameToHereKeyColumn is one of the columns that is unique for this table. If you have several to choose from, use the fastest one
of them.
I suggest you first do these changes to all of the scripts. That should make them easier for you to understand.
This script initializes datatime values of field lastUpdate, so don't worry about that.

5) Execute script 02

6) Change script 03 and execute it.
I have used table names as columns in here. This might make the solution harder to understand, but at least it makes it easier to change these scripts to
fit your database.
Note that this table always has one row only.
If you restore LongTermDatabaseName from backups, these values should be automatically correct, so the next execution should work without problems.
If you restore ShortTermDatabaseName from backups, the next execution should also work without problems because the info is already in 
LongTermDatabaseName and older data will NOT be copied over newer data.
If you restore both LongTermDatabaseName and ShortTermDatabaseName, then you should not have any issues either.

7) Change script 04 and execute it.
You must insert all columns in the script.
It is best to execute this manually on first time.
This script gives as output the time range that you just copied.

8) Create a job to execute script 04 periodically. For a 7GB ShortTermDatabaseName database, this script took 7 seconds to execute when there was nothing to update and 14 seconds with updates.



BUGS AND DEVELOPMENT NEEDS
1) These scripts are complex to alter and thus it is error prone to use these: Alter the script so that column names are read automatically
2) Script to copy these values in retrospect. Note: this works perfectly only for the time duration of the ShortTermDatabaseName.
3) There is no error handling in script 04. This means that when the database schema changes, the whole copy operation will fail from that point onwards (or from the beginning?).
4) Job to clean old data from the cumulative database.
5) Script example for triggering deletions.
