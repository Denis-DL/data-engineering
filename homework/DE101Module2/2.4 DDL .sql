
DROP TABLE IF EXISTS dw.customer_dim;
CREATE TABLE dw.customer_dim
(
 cust_id       serial NOT NULL,
 customer_name varchar(22) NOT NULL,
 segment       varchar(11) NOT NULL,
 customer_id   varchar(8) NOT NULL,
 CONSTRAINT PK_79 PRIMARY KEY ( cust_id )
);


DROP TABLE IF EXISTS dw.geo_dim;
CREATE TABLE geo_dim
(
 geo_id      serial NOT NULL,
 country     varchar(13) NOT NULL,
 city        varchar(17) NOT NULL,
 "state"       varchar(20) NOT NULL,
 postal_code integer NOT NULL,
 region      varchar(7) NOT NULL,
 CONSTRAINT PK_41 PRIMARY KEY ( geo_id )
);


DROP TABLE IF EXISTS dw.product_dim;
CREATE TABLE dw.product_dim
(
 prod_id      serial NOT NULL,
 category     varchar(20) NOT NULL,
 sub_category varchar(20) NOT NULL,
 product_name varchar(127) NOT NULL,
 product_id   varchar(20) NOT NULL,
 CONSTRAINT PK_52 PRIMARY KEY ( prod_id )
);


DROP TABLE IF EXISTS dw.ship_dim;
CREATE TABLE dw.ship_dim
(
 ship_id   serial NOT NULL,
 ship_mode varchar(14) NOT NULL,
 CONSTRAINT PK_33 PRIMARY KEY ( ship_id )
);



DROP TABLE IF EXISTS dw.sales_fact; 
CREATE TABLE sales_fact
(
 row_id     serial NOT NULL,
 prod_id    serial NOT NULL,
 ship_id    serial NOT NULL,
 sales      numeric(9,4) NOT NULL,
 quantity   integer NOT NULL,
 profit     numeric(21,16) NOT NULL,
 discount   numeric(4,2) NOT NULL,
 order_date date NOT NULL,
 geo_id     serial NOT NULL,
 cust_id    serial NOT NULL,
 order_id   varchar(20) NOT NULL,
 ship_date  date NOT NULL,
 CONSTRAINT PK_13 PRIMARY KEY ( row_id );

