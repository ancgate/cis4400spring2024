CREATE SCHEMA INSTANCE;

CREATE TABLE greentaxi_dw_lgl.INSTANCE.dim_date ( 
	date_id int64 NOT NULL  ,
	year int64  ,
	monthNumber int64  ,
	quarter int64  ,
	daynumber int64  ,
	dayname string  ,
	monthname string  ,
	weekofthemonth int64  ,
	weekofyear int64  ,
	hournumber int64  ,
	dateIsoformat datetime  
 );

ALTER TABLE greentaxi_dw_lgl.INSTANCE.dim_date ADD PRIMARY KEY ( date_id )  NOT ENFORCED;

CREATE TABLE greentaxi_dw_lgl.INSTANCE.dim_location ( 
	location_id int64 NOT NULL  ,
	borough string  ,
	zone string  ,
	latitude bignumeric  ,
	longitude bignumeric  ,
	service_zone string  
 );

ALTER TABLE greentaxi_dw_lgl.INSTANCE.dim_location ADD PRIMARY KEY ( location_id )  NOT ENFORCED;

CREATE TABLE greentaxi_dw_lgl.INSTANCE.dim_paymentType ( 
	paymentType_id int64 NOT NULL  
 );

ALTER TABLE greentaxi_dw_lgl.INSTANCE.dim_paymentType ADD PRIMARY KEY ( paymentType_id )  NOT ENFORCED;

CREATE TABLE greentaxi_dw_lgl.INSTANCE.dim_rateCode ( 
	ratecode_id int64 NOT NULL  
 );

ALTER TABLE greentaxi_dw_lgl.INSTANCE.dim_rateCode ADD PRIMARY KEY ( ratecode_id )  NOT ENFORCED;

CREATE TABLE greentaxi_dw_lgl.INSTANCE.dim_tripTye ( 
	triptype_id int64 NOT NULL  
 );

ALTER TABLE greentaxi_dw_lgl.INSTANCE.dim_tripTye ADD PRIMARY KEY ( triptype_id )  NOT ENFORCED;

CREATE TABLE greentaxi_dw_lgl.INSTANCE.dim_vendor ( 
	vendor_id int64 NOT NULL  ,
	vendor_name string  
 );

ALTER TABLE greentaxi_dw_lgl.INSTANCE.dim_vendor ADD PRIMARY KEY ( vendor_id )  NOT ENFORCED;

CREATE TABLE greentaxi_dw_lgl.INSTANCE.facts_trips ( 
	fact_id int64 NOT NULL  ,
	fare_amount numeric  ,
	extra_amount numeric NOT NULL  ,
	passenger_count int64  ,
	pulocation_id int64 NOT NULL  ,
	dolocation_id int64 NOT NULL  ,
	vendor_id int64  ,
	ratecode_id int64  ,
	paymenttype_id int64  ,
	tripType_id int64  ,
	pickup_date int64  ,
	dropoff_date int64  
 );

ALTER TABLE greentaxi_dw_lgl.INSTANCE.facts_trips ADD PRIMARY KEY ( fact_id, pulocation_id, dolocation_id )  NOT ENFORCED;
