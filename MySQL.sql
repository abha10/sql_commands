#Create user in mysql
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
  #  - use localhost for a user to access the db from local machine.
  #  - use % for a user to access the db from any machine.

#Provide access to a specific db
GRANT SELECT ON <database name>.* TO 'user'@'localhost';

  #ALL PRIVILEGES – grants all privileges to the MySQL user
  #CREATE – allows the user to create databases and tables
  #DROP - allows the user to drop databases and tables
  #DELETE - allows the user to delete rows from specific MySQL table
  #INSERT - allows the user to insert rows into specific MySQL table
  #SELECT – allows the user to read the database
  #UPDATE - allows the user to update table rows


#To update credentials use following,	
FLUSH PRIVILEGES;
#-----------------------------------------------------------------------
#PROCESSLIST

#Get all running queries
show processlist;
show FULL processlist;

#To put conditions on processlist
select * from information_schema.processlist where user= 'root' \G

#List all procedures
SHOW PROCEDURE STATUS;

#List all procedure for a particular db
SHOW PROCEDURE STATUS WHERE db = '<db name>';

#To describe a procedure
SHOW CREATE PROCEDURE proc_name


#MySQL Dump Commands


#Command for a specific DB
mysqldump -uroot -p --master-data=1 --flush-logs --single-transaction --quick --extended-insert --databases marketing_campaigns_db_v2 --ignore-table=marketing_campaigns_db_v2.launch_error_data --ignore-table=marketing_campaigns_db_v2.marketing_campaign_budget_settings_journals --ignore-table=marketing_campaigns_db_v2.strategy_trigger_journals > mysql.dump


#Command for a all dbs
mysqldump -uroot -p --host 127.0.0.1 --master-data=1 --flush-logs --single-transaction --quick --port 5006 --extended-insert --all-databases > mysqlddb_5006.08_07_2019.dump


#Explanation of each options used in above command,


    --master-data=These are the master server coordinates from which the slave should start replicating after you load the dump file into the slave.
            1= adds master server corrdinates as sql command.
            2= adds master server corrdinates as comment.
    
    --flush-logs=Flush the MySQL server log files before starting the dump.
    
    --single-transaction=Issue a BEGIN SQL statement before dumping data from server.
    --extended-insert=Use multiple-row INSERT syntax
    
    --quick=This option is useful for dumping large tables. It forces mysqldump to retrieve rows for a table from the server a row at a time rather than retrieving the entire row set and buffering it in memory before writing it out.
    
    --ignore-table= Do not dump the given table, which must be specified using both the database and table names.
