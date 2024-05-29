Create database Crowdfunding_ETL_db;
	
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

CREATE TABLE category (
    category_id varchar (50)   NOT NULL,
    category varchar (50)  NOT NULL,
	primary key (category_id)
);


CREATE TABLE subcategory (
    subcategory_id varchar (50)  NOT NULL,
    subcategory varchar (50)  NOT NULL,
	primary key (subcategory_id)
);

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (50)  NOT NULL,
    last_name varchar (50)  NOT NULL,
    email varchar (50)  NOT NULL,
	primary key (contact_id)
);
CREATE TABLE campaign(
	cf_id int PRIMARY KEY,
	contact_id int NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR (500) NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR (50) NOT NULL,
	backers_count int NOT NULL,
	country VARCHAR (50) NOT NULL,
	currency VARCHAR (50) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NULL,
	category_id VARCHAR (50) NOT NULL,
	subcategory_id VARCHAR (50) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id)
);

select * from category
select * from subcategory
select * from contacts
select * from campaign