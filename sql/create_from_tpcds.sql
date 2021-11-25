create schema IF NOT EXISTS hive.tpcds1;

create table IF NOT EXISTS hive.tpcds1.call_center as SELECT * FROM tpcds.sf1.call_center;
create table IF NOT EXISTS hive.tpcds1.catalog_page as SELECT * FROM tpcds.sf1.catalog_page;
create table IF NOT EXISTS hive.tpcds1.catalog_returns as SELECT * FROM tpcds.sf1.catalog_returns;
create table IF NOT EXISTS hive.tpcds1.catalog_sales as SELECT * FROM tpcds.sf1.catalog_sales;
create table IF NOT EXISTS hive.tpcds1.customer as SELECT * FROM tpcds.sf1.customer;
create table IF NOT EXISTS hive.tpcds1.customer_address as SELECT * FROM tpcds.sf1.customer_address;
create table IF NOT EXISTS hive.tpcds1.customer_demographics as SELECT * FROM tpcds.sf1.customer_demographics;
create table IF NOT EXISTS hive.tpcds1.date_dim as SELECT * FROM tpcds.sf1.date_dim;
create table IF NOT EXISTS hive.tpcds1.dbgen_version as SELECT * FROM tpcds.sf1.dbgen_version;
create table IF NOT EXISTS hive.tpcds1.household_demographics as SELECT * FROM tpcds.sf1.household_demographics;
create table IF NOT EXISTS hive.tpcds1.income_band as SELECT * FROM tpcds.sf1.income_band;
create table IF NOT EXISTS hive.tpcds1.inventory as SELECT * FROM tpcds.sf1.inventory;
create table IF NOT EXISTS hive.tpcds1.item as SELECT * FROM tpcds.sf1.item;
create table IF NOT EXISTS hive.tpcds1.promotion as SELECT * FROM tpcds.sf1.promotion;
create table IF NOT EXISTS hive.tpcds1.reason as SELECT * FROM tpcds.sf1.reason;
create table IF NOT EXISTS hive.tpcds1.ship_mode as SELECT * FROM tpcds.sf1.ship_mode;
create table IF NOT EXISTS hive.tpcds1.store as SELECT * FROM tpcds.sf1.store;
create table IF NOT EXISTS hive.tpcds1.store_returns as SELECT * FROM tpcds.sf1.store_returns;
create table IF NOT EXISTS hive.tpcds1.store_sales as SELECT * FROM tpcds.sf1.store_sales;
create table IF NOT EXISTS hive.tpcds1.time_dim as SELECT * FROM tpcds.sf1.time_dim;
create table IF NOT EXISTS hive.tpcds1.warehouse as SELECT * FROM tpcds.sf1.warehouse;
create table IF NOT EXISTS hive.tpcds1.web_page as SELECT * FROM tpcds.sf1.web_page;
create table IF NOT EXISTS hive.tpcds1.web_returns as SELECT * FROM tpcds.sf1.web_returns;
create table IF NOT EXISTS hive.tpcds1.web_sales as SELECT * FROM tpcds.sf1.web_sales;
create table IF NOT EXISTS hive.tpcds1.web_site as SELECT * FROM tpcds.sf1.web_site;

