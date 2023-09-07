CREATE TABLE "Category" (
    "category_id" varchar(10),
    "category" varchar(50)
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(10),
    "subcategory" varchar(50)
);

CREATE TABLE "Contacts" (
    "contact_id" int,
    "first_name" varchar(50),
    "last_name" varchar(50),
    "email" varchar(100)
);

CREATE TABLE "Campaigns" (
    "cf_id" int,
    "contact_id" int,
    "company_name" varchar(100),
    "description" text,
    "goal" numeric(10,2),
    "pledged" numeric(10,2),
    "outcome" varchar(50),
    "backers_count" int,
    "country" varchar(10),
    "currency" varchar(10),
    "launched_date" date,
    "end_date" date,
    "category_id" varchar(10),
    "subcategory_id" varchar(10)
);

SELECT * FROM Category;

SELECT * FROM Subcategory;

SELECT * FROM Contacts;

SELECT * FROM Campaigns;


