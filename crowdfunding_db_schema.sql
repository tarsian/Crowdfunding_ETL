-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/UYyC8y
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" text   NOT NULL,
    "goal" numeric(10,2)   NOT NULL,
    "pledge" numeric(10,2)   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(50)   NOT NULL,
    "currency" varchar(50)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(50)   NOT NULL,
    "subcategory_id" varchar(50)   NOT NULL,
	PRIMARY KEY ("cf_id"),
	FOREIGN KEY ("category_id") REFERENCES category ("category_id"),
	FOREIGN KEY ("subcategory_id") REFERENCES subcategory ("subcategory_id"),
	FOREIGN KEY ("contact_id") REFERENCES contacts ("contact_id")
);

CREATE TABLE "Category" (
    "category_id" varchar(30)   NOT NULL,
    "category" varchar(30)   NOT NULL,
    PRIMARY KEY ("category_id")
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    PRIMARY KEY ("contact_id")
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(300)   NOT NULL,
    "subcategory" varchar(30)   NOT NULL,
    PRIMARY KEY ("subcategory_id")
);

