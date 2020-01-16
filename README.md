These scripts have been written by Timo Riikonen.
If you enhance these, I would appreciate if you would send you improvements to me: timo.riikonen@tieto.com
Copyright: GNU Lesser General Public License, https://www.gnu.org/licenses/lgpl-3.0.en.html

What this does:
We have two databases ShortTermDatabaseName and LongTermDatabaseName. This script copies data from ShortTermDatabaseName to LongTermDatabaseName.
Basically we use this in environment where ShortTermDatabaseName is replicated from somewhere and we need to have another database for business 
intelligence purposes, which is called as LongTermDatabaseName.


REQUIREMENTS
- All tables must have unique id.
- MS SQL Server 2008+


INSTALLATION
1) Add following columns to all databases:
	[lastUpdate] [datetime2](7) NULL,
We have tested this with SQL Server 2014 replication: Adding this column does not affect existing replication and replication will maintain this field.
If you already have a similar field, it should work either 99.9% or 100%, need to think about that more.

2) Change script 02
You are expected to change in all scripts terms like ShortTermDatabaseName as the database you are using, InsertTable1NameToHere as first table name you 
are copying, InsertTable1NameToHereKeyColumn is one of the columns that is unique for this table. If you have several to choose from, use the fastest one
of them.
I suggest you first do these changes to all of the scripts. That should make them easier for you to understand.
This script initializes datatime values of field lastUpdate, so don't worry about that.

3) Execute script 02

4) Change script 03 and execute it.
I have used table names as columns in here. This might make the solution harder to understand, but at least it makes it easier to change these scripts to
fit your database.
Note that this table always has one row only.
If you restore LongTermDatabaseName from backups, these values should be automatically correct, so the next execution should work without problems.
If you restore ShortTermDatabaseName from backups, the next execution should also work without problems because the info is already in 
LongTermDatabaseName and older data will NOT be copied over newer data.
If you restore both LongTermDatabaseName and ShortTermDatabaseName, then you should not have any issues either.

5) Change script 04 and execute it.
You must insert all columns in the script.
It is best to execute this manually on first time.
This script gives as output the time range that you just copied.

6) Create a job to execute script 04 periodically. For a 100GB ShortTermDatabaseName database, this script took less than a minute to execute. 
Time was same whether the script did nothing or had data to copy.


BUGS AND DEVELOPMENT NEEDS
1) These scripts are complex to alter and thus it is error prone to use these.
2) When you get new columns, this script will still work except values for these new columns are not copied to LongTermDatabaseName.
2A) Script to make an error if number of columns is higher than before. Add this script either to the  beginning of script 04 or as a separate step in the 
job.
2B) Script to copy these values in retrospect. Note: this works perfectly only for the time duration of the ShortTermDatabaseName.
2C) Alter the script so that column names are read automatically and thus fix issues 1 & 2.
3) There is no error handling in script 04. 
AFAIK this script doesn't need it, but perhaps there is a situation where it would be useful.

