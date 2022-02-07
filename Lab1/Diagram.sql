CREATE TABLE "Product" (
  "id" integer PRIMARY KEY,
  "price_id" integer,
  "weight" float,
  "manufacturer_id" text,
  "category_id" varchar
);

CREATE TABLE "Categories" (
  "category_id" integer PRIMARY KEY,
  "size" float,
  "weight" float,
  "color" text,
  "brand" text
);

CREATE TABLE "Manufacturer" (
  "manufacturer_id" text PRIMARY KEY,
  "purchase_price" float,
  "category" varchar
);

CREATE TABLE "Storage" (
  "storage_id" integer PRIMARY KEY,
  "adress" text
);

CREATE TABLE "Product_storage" (
  "storage_id" integer PRIMARY KEY,
  "values" integer,
  "date_in" date,
  "date_out" date
);

ALTER TABLE "Manufacturer" ADD FOREIGN KEY ("manufacturer_id") REFERENCES "Product" ("manufacturer_id");

ALTER TABLE "Product_storage" ADD FOREIGN KEY ("storage_id") REFERENCES "Product" ("id");

ALTER TABLE "Categories" ADD FOREIGN KEY ("category_id") REFERENCES "Product" ("category_id");

ALTER TABLE "Storage" ADD FOREIGN KEY ("storage_id") REFERENCES "Product_storage" ("storage_id");
