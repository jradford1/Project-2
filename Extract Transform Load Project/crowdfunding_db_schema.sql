﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/sDEn4K
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category" (
    "category_id" VARCHAR(255)   NOT NULL,
    "category" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(255)   NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" INT   NOT NULL,
    "pledged" INT   NOT NULL,
    "outcome" VARCHAR(255)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(255)   NOT NULL,
    "currency" VARCHAR(255)   NOT NULL,
    "launched_date" VARCHAR(255)   NOT NULL,
    "end_date" VARCHAR(255)   NOT NULL,
    "category_id" VARCHAR(255)   NOT NULL,
    "subcategory_id" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign__contact_id" FOREIGN KEY("", "contact_id")
REFERENCES "contacts" ("", "contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign__category_id" FOREIGN KEY("", "category_id")
REFERENCES "category" ("", "category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign__subcategory_id" FOREIGN KEY("", "subcategory_id")
REFERENCES "subcategory" ("", "subcategory_id");

