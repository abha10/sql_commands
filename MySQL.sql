#Create user in mysql
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
  #  - use localhost for a user to access the db from local machine.
  #  - use % for a user to access the db from any machine.

#Provide access to a specific db
GRANT SELECT ON database.* TO 'user'@'localhost';

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

