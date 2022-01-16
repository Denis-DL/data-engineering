-- insert values from customer
INSERT INTO dw.customer_dim
SELECT
	100+row_number() over () as cust_id,
	customer_name,
	segment,
	customer_id
FROM
	(SELECT
		DISTINCT
		customer_name,
		segment,
		customer_id
	FROM
	 	public.orders) AS a;
	
--update postal code 
update public.orders
set postal_code = '05401'
where city = 'Burlington'  and postal_code is null;

-- insert values from geography
INSERT INTO dw.geo_dim
SELECT
	100+row_number() over () as geo_id,
	country,
	city,
	state,
	postal_code,
	region
FROM
	(SELECT
		DISTINCT
		country,
		city,
		state,
		postal_code,
		region
	FROM
		public.orders) AS a;

-- insert values from product
INSERT INTO dw.product_dim
SELECT
	100+row_number() over () as prod_id,
	category,
	subcategory ,
	product_name,
	product_id
FROM
	(SELECT
	 	DISTINCT
	 	category,
		subcategory ,
		product_name,
		product_id
	 FROM
	 	public.orders) AS a;

-- insert values from shipping
INSERT INTO dw.ship_dim
SELECT
	100+row_number() over () as ship_id,
	ship_mode
FROM
	(SELECT
		 DISTINCT
		 ship_mode
	 FROM
	 	public.orders) AS a;

-- insert values from orders
INSERT INTO dw.sales_fact
SELECT
	prod_id,
 	ship_id,
 	sales,
 	quantity,
 	profit,
 	discount,
 	order_date,
 	geo_id,
 	cust_id,
 	row_number() over() as row_id,
	order_id,
	ship_date
FROM
	public.orders AS o
INNER JOIN
	dw.customer_dim AS cd
		ON o.customer_id = cd.customer_id AND o.customer_name = cd.customer_name AND o.segment = cd.segment
INNER JOIN
	dw.geo_dim AS gd
		ON o.country = gd.country AND o.city=gd.city AND o.state = gd.state AND o.region = gd.region AND o.postal_code = gd.postal_code
INNER JOIN
	dw.product_dim AS pd
		ON o.product_id = pd.product_id AND o.product_name = pd.product_name AND o.category = pd.category AND o.subcategory = pd.sub_category 
INNER JOIN
	dw.ship_dim AS sd
		ON o.ship_mode = sd.ship_mode; 
	
--check
SELECT
	COUNT(*)
FROM
	dw.sales_fact AS sf
INNER JOIN
	dw.customer_dim AS cd
		ON cd.cust_id = sf.cust_id
INNER JOIN
	dw.geo_dim AS gd
		ON gd.geo_id = sf.geo_id
INNER JOIN
	dw.product_dim AS pd
		ON pd.prod_id = sf.prod_id 		
INNER JOIN
	dw.ship_dim AS sd
		ON sd.ship_id = sf.ship_id;		
		



	

