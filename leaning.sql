CREATE TABLE users(
	id int PRIMARY KEY,
	name varchar(10)
);

DROP TABLE users;

INSERT INTO users(id,name) VALUES(10191781,'kusuguchi');
INSERT INTO users(id,name) VALUES(10191782,'kusuguchi');

CREATE TABLE my_first_table (
    first_column text,
    second_column integer
);

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric
);

DROP TABLE my_first_table;
DROP TABLE products;

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric DEFAULT 9.99
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer DEFAULT nextval('products_product_no_seq'),
 	name text,
    price numeric DEFAULT 9.99
);

DROP TABLE products;

CREATE TABLE products (
    product_no SERIAL,
 	name text,
    price numeric DEFAULT 9.99
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric CHECK (price > 0)
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric CONSTRAINT positive_price CHECK (price > 0)
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric CHECK (price > 0),
    discounted_price numeric CHECK (discounted_price > 0),
    CHECK (price > discounted_price)
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer NOT NULL,
    name text NOT NULL,
    price numeric
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer NOT NULL,
    name text NOT NULL,
    price numeric NOT NULL CHECK (price > 0)
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer NULL,
    name text NULL,
    price numeric NULL
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer UNIQUE,
    name text,
    price numeric
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric,
    UNIQUE (product_no)
);

DROP TABLE products;

CREATE TABLE example (
    a integer,
    b integer,
    c integer,
    UNIQUE (a, c)
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer CONSTRAINT must_be_different UNIQUE,
    name text,
    price numeric
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer UNIQUE NULLS NOT DISTINCT,
    name text,
    price numeric
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer,
    name text,
    price numeric,
    UNIQUE NULLS NOT DISTINCT (product_no)
);

DROP TABLE products;

CREATE TABLE products (
    product_no integer PRIMARY KEY,
    name text,
    price numeric
);

DROP TABLE products;

CREATE TABLE orders (
    order_id integer PRIMARY KEY,
    product_no integer REFERENCES products (product_no),
    quantity integer
);

DROP TABLE orders;

CREATE TABLE orders (
    order_id integer PRIMARY KEY,
    product_no integer REFERENCES products,
    quantity integer
);

CREATE TABLE t1 (
  a integer PRIMARY KEY,
  b integer,
  c integer,
  FOREIGN KEY (b, c) REFERENCES other_table (c1, c2)
);

CREATE TABLE circles (
    c circle,
    EXCLUDE USING gist (c WITH &&)
);

ALTER TABLE products ADD COLUMN description text;

ALTER TABLE products DROP COLUMN description;

ALTER TABLE products DROP COLUMN description CASCADE;

ALTER TABLE products ADD CHECK (name <> '');
ALTER TABLE products ADD CONSTRAINT some_name UNIQUE (product_no);
ALTER TABLE products ADD FOREIGN KEY (product_group_id) REFERENCES product_groups;

ALTER TABLE products ALTER COLUMN product_no SET NOT NULL;

ALTER TABLE products DROP CONSTRAINT some_name;


