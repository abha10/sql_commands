#Create User with Password

CREATE USER <USERNAME> WITH PASSWORD '<Password>';

#Provide READ Only access on ALL Tables

GRANT SELECT ON ALL TABLES IN SCHEMA public TO <username>;

#Provide READ only access on a specific Table

GRANT SELECT ON <TABLENAME> TO <USERNAME>;
