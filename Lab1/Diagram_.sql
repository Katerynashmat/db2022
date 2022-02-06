CREATE TABLE "Product" (
  "id" integer PRIMARY KEY,
  "price" integer,
  "weight" float,
  "manufacturer" text,
  "storage" integer,
  "categories" varchar
);

CREATE TABLE "Categories" (
  "id_categories" integer PRIMARY KEY,
  "size" float,
  "weight" float,
  "color" text,
  "brand" text,
  "categories" varchar
);

CREATE TABLE "Manufacturer" (
  "id" integer PRIMARY KEY,
  "manufacturer" text,
  "purchase_price" float,
  "categories" varchar
);

CREATE TABLE "Storage" (
  "id" integer PRIMARY KEY,
  "storage" integer,
  "address" text,
  "values" integer,
  "date_in" date,
  "date_out" date
);

CREATE TABLE "Price" (
  "id" integer PRIMARY KEY,
  "price" integer,
  "product" text
);

ALTER TABLE "Storage" ADD FOREIGN KEY ("storage") REFERENCES "Product" ("storage");

ALTER TABLE "Manufacturer" ADD FOREIGN KEY ("manufacturer") REFERENCES "Product" ("manufacturer");

ALTER TABLE "Categories" ADD FOREIGN KEY ("id_categories") REFERENCES "Manufacturer" ("categories");

ALTER TABLE "Price" ADD FOREIGN KEY ("id") REFERENCES "Manufacturer" ("purchase_price");
