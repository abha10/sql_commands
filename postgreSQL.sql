##Create User with Password

CREATE USER <USERNAME> WITH PASSWORD '<Password>';

#Provide read-only access on all Tables

GRANT SELECT ON ALL TABLES IN SCHEMA public TO <username>;

#Provide read-only access on a specific Table

GRANT SELECT ON <TABLENAME> TO <USERNAME>;
