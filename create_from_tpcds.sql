create schema IF NOT EXISTS hive.tpcds2;

create table IF NOT EXISTS hive.tpcds2.call_center as SELECT * FROM tpcds.sf1.call_center;
create table IF NOT EXISTS hive.tpcds2.catalog_page as SELECT * FROM tpcds.sf1.catalog_page;
create table IF NOT EXISTS hive.tpcds2.catalog_returns as SELECT * FROM tpcds.sf1.catalog_returns;
create table IF NOT EXISTS hive.tpcds2.catalog_sales as SELECT * FROM tpcds.sf1.catalog_sales;
create table IF NOT EXISTS hive.tpcds2.customer as SELECT * FROM tpcds.sf1.customer;
create table IF NOT EXISTS hive.tpcds2.customer_address as SELECT * FROM tpcds.sf1.customer_address;
create table IF NOT EXISTS hive.tpcds2.customer_demographics as SELECT * FROM tpcds.sf1.customer_demographics;
create table IF NOT EXISTS hive.tpcds2.date_dim as SELECT * FROM tpcds.sf1.date_dim;
--create table IF NOT EXISTS hive.tpcds2.dbgen_version as SELECT * FROM tpcds.sf1.dbgen_version;
create table IF NOT EXISTS hive.tpcds2.household_demographics as SELECT * FROM tpcds.sf1.household_demographics;
create table IF NOT EXISTS hive.tpcds2.income_band as SELECT * FROM tpcds.sf1.income_band;
create table IF NOT EXISTS hive.tpcds2.inventory as SELECT * FROM tpcds.sf1.inventory;
create table IF NOT EXISTS hive.tpcds2.item as SELECT * FROM tpcds.sf1.item;
create table IF NOT EXISTS hive.tpcds2.promotion as SELECT * FROM tpcds.sf1.promotion;
create table IF NOT EXISTS hive.tpcds2.reason as SELECT * FROM tpcds.sf1.reason;
create table IF NOT EXISTS hive.tpcds2.ship_mode as SELECT * FROM tpcds.sf1.ship_mode;
create table IF NOT EXISTS hive.tpcds2.store as SELECT * FROM tpcds.sf1.store;
create table IF NOT EXISTS hive.tpcds2.store_returns as SELECT * FROM tpcds.sf1.store_returns;
create table IF NOT EXISTS hive.tpcds2.store_sales as SELECT * FROM tpcds.sf1.store_sales;
create table IF NOT EXISTS hive.tpcds2.time_dim as SELECT * FROM tpcds.sf1.time_dim;
create table IF NOT EXISTS hive.tpcds2.warehouse as SELECT * FROM tpcds.sf1.warehouse;
create table IF NOT EXISTS hive.tpcds2.web_page as SELECT * FROM tpcds.sf1.web_page;
create table IF NOT EXISTS hive.tpcds2.web_returns as SELECT * FROM tpcds.sf1.web_returns;
create table IF NOT EXISTS hive.tpcds2.web_sales as SELECT * FROM tpcds.sf1.web_sales;
create table IF NOT EXISTS hive.tpcds2.web_site as SELECT * FROM tpcds.sf1.web_site;

