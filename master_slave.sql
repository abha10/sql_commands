#Stop slave replication and make it a master

#In mysql instance
STOP SLAVE;
RESET SLAVE;

#Restart service
service mysql restart

