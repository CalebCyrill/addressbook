--Creating the tables for the addressbook database
create table users(
    id serial NOT NULL PRIMARY KEY,
    email text NOT NULL unique,
    password text NOT NULL,
    created_at timestamp DEFAULT now(),
    updated_at timestamp DEFAULT now()
);

create table people(
    id serial NOT NULL PRIMARY KEY,
    salutations varchar(3) NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    ssn varchar(11) NULL,
    birth_date date NULL,
    comment text NULL,
    user_id integer REFERENCES users (id),
    created_at timestamp DEFAULT now(),
    updated_at timestamp DEFAULT now()
);

CREATE table addresses(
    id serial NOT NULL PRIMARY KEY,
    street varchar(500) NOT NULL,
    town varchar(500) NOT NULL,
    zip_code char(5) NOT NULL,
    state varchar(500) NULL,
    country varchar(500) NULL,
    comment text NULL,
    person_id integer REFERENCES people (id),
    created_at timestamp DEFAULT now(),
    updated_at timestamp DEFAULT now()
);

CREATE TABLE emails(
    id serial NOT NULL PRIMARY KEY,
    email varchar(500) NOT NULL,
    comment text NULL,
    person_id integer REFERENCES people (id),
    created_at timestamp DEFAULT now(),
    updated_at timestamp DEFAULT now()
)

CREATE TABLE phone_numbers(
    id serial NOT NULL PRIMARY KEY,
    phone_numbers varchar(10) NOT NULL,
    comment text NULL,
    created_at timestamp DEFAULT now(),
    updated_at timestamp DEFAULT now()
)