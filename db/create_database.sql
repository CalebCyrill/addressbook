--Create the address book database
CREATE DATABASE addressbook
    WITH
    OWNER = admin
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

--Create the password masking
CREATE EXTENSION pgcrypto;
