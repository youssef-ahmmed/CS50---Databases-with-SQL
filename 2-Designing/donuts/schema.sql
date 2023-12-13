CREATE TABLE ingredients (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "price" REAL NOT NULL,
    "unit" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE donuts (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "is_gluten_free" TEXT NOT NULL CHECK ("is_gluten_free" IN ('Y', 'N')),
    "price" REAL NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE donuts_ingredients (
    "ingredient_id" INTEGER,
    "donut_id" INTEGER,
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);


CREATE TABLE orders (
    "id" INTEGER,
    "customer_id" INTEGER,
    "order_number" INTEGER NOT NULL UNIQUE,
    "timestamp" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE orders_donuts (
    "donut_id" INTEGER,
    "order_id" INTEGER,
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);

CREATE TABLE customers (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY("id")
);