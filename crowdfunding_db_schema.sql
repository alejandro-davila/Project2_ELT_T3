-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/HVXTyU
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Campaigns] (
    [cf_id] int  NOT NULL ,
    [contact_id] int  NOT NULL ,
    [company_name] varchar(100)  NOT NULL ,
    [description] text  NOT NULL ,
    [goal] numeric(10,2)  NOT NULL ,
    [pledged] numeric(10,2)  NOT NULL ,
    [outcome] varchar(50)  NOT NULL ,
    [backers_count] int  NOT NULL ,
    [country] varchar(5)  NOT NULL ,
    [currency] varchar(5)  NOT NULL ,
    [launched_date] date  NOT NULL ,
    [end_date] date  NOT NULL ,
    [category_id] varchar(10)  NOT NULL ,
    [subcategory_id] varchar(10)  NOT NULL ,
    CONSTRAINT [PK_Campaigns] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

CREATE TABLE [Contacts] (
    [contact_id] int  NOT NULL ,
    [first_name] varchar(50)  NOT NULL ,
    [last_name] varchar(50)  NOT NULL ,
    [email] varchar(100)  NOT NULL ,
    CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

CREATE TABLE [Category] (
    [category_id] varchar(10)  NOT NULL ,
    [category] varchar(50)  NOT NULL ,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED (
        [category_id] ASC
    )
)

CREATE TABLE [Subcategory] (
    [subcategory_id] varchar(10)  NOT NULL ,
    [subcategory] varchar(50)  NOT NULL ,
    CONSTRAINT [PK_Subcategory] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

ALTER TABLE [Campaigns] WITH CHECK ADD CONSTRAINT [FK_Campaigns_category_id] FOREIGN KEY([category_id])
REFERENCES [Category] ([category_id])

ALTER TABLE [Campaigns] CHECK CONSTRAINT [FK_Campaigns_category_id]

ALTER TABLE [Campaigns] WITH CHECK ADD CONSTRAINT [FK_Campaigns_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [Subcategory] ([subcategory_id])

ALTER TABLE [Campaigns] CHECK CONSTRAINT [FK_Campaigns_subcategory_id]

ALTER TABLE [Contacts] WITH CHECK ADD CONSTRAINT [FK_Contacts_contact_id] FOREIGN KEY([contact_id])
REFERENCES [Campaigns] ([contact_id])

ALTER TABLE [Contacts] CHECK CONSTRAINT [FK_Contacts_contact_id]

COMMIT TRANSACTION QUICKDBD