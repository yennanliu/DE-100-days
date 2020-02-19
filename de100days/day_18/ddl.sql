CREATE TABLE customer (
   id serial PRIMARY KEY, 
   first_name varchar,
   last_name varchar,
   city_id varchar,
   created_at TIMESTAMP
) 

CREATE TABLE merchants (
   id serial PRIMARY KEY,
   merchant_name varchar,
   city_id varchar,
   created_at TIMESTAMP
)

CREATE TABLE product (
    id serial PRIMARY KEY,
    merchant_id varchar,
    product_name varchar,
    status varchar, 
    price NUMERIC,
    created_at TIMESTAMP
)

CREATE TABLE orders (
    id serial PRIMARY KEY,
    customer_id varchar,
    product_id varchar,
    status varchar,
    created_at TIMESTAMP
)

CREATE TABLE order_items (
    order_id varchar 
    product_id varchar,
    quantity NUMERIC
)

CREATE TABLE order_delivery (
    id serial PRIMARY KEY,
    order_id  varchar,
    product_id  varchar,
    delivery_id varchar
)

CREATE TABLE delivery (
    id serial PRIMARY KEY,
    checkout_delivery_id varchar,
    status varchar,
    created_at TIMESTAMP
)

CREATE TABLE Warehouse (
    id serial PRIMARY KEY,
    warehouse_name varchar,
    product_id varchar,
    quantity int, 
    status varchar,
    city_id varchar,
    last_updated TIMESTAMP, 
    created_at TIMESTAMP
)

CREATE TABLE city (
    id serial PRIMARY KEY,
    city_name varchar
)