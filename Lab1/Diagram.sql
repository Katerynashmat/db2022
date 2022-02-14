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

CREATE TABLE "SMR" (
  "SMR" integer PRIMARY KEY,
  "product_id" integer,
  "storage_id" integer,
  "values" integer,
  "date" date,
  "reception" date
);

ALTER TABLE "Product" ADD FOREIGN KEY ("manufacturer_id") REFERENCES "Manufacturer" ("manufacturer_id");

ALTER TABLE "SMR" ADD FOREIGN KEY ("product_id") REFERENCES "Product" ("id");

ALTER TABLE "Product" ADD FOREIGN KEY ("category_id") REFERENCES "Categories" ("category_id");

ALTER TABLE "SMR" ADD FOREIGN KEY ("storage_id") REFERENCES "Storage" ("storage_id");
