create schema IF NOT EXISTS hive.tpcds3;

create table IF NOT EXISTS hive.tpcds3.call_center as SELECT * FROM tpcds.sf100.call_center;
create table IF NOT EXISTS hive.tpcds3.catalog_page as SELECT * FROM tpcds.sf100.catalog_page;
create table IF NOT EXISTS hive.tpcds3.catalog_returns as SELECT * FROM tpcds.sf100.catalog_returns;
create table IF NOT EXISTS hive.tpcds3.catalog_sales as SELECT * FROM tpcds.sf100.catalog_sales;
create table IF NOT EXISTS hive.tpcds3.customer as SELECT * FROM tpcds.sf100.customer;
create table IF NOT EXISTS hive.tpcds3.customer_address as SELECT * FROM tpcds.sf100.customer_address;
create table IF NOT EXISTS hive.tpcds3.customer_demographics as SELECT * FROM tpcds.sf100.customer_demographics;
create table IF NOT EXISTS hive.tpcds3.date_dim as SELECT * FROM tpcds.sf100.date_dim;
--create table IF NOT EXISTS hive.tpcds3.dbgen_version as SELECT * FROM tpcds.sf100.dbgen_version;
create table IF NOT EXISTS hive.tpcds3.household_demographics as SELECT * FROM tpcds.sf100.household_demographics;
create table IF NOT EXISTS hive.tpcds3.income_band as SELECT * FROM tpcds.sf100.income_band;
create table IF NOT EXISTS hive.tpcds3.inventory as SELECT * FROM tpcds.sf100.inventory;
create table IF NOT EXISTS hive.tpcds3.item as SELECT * FROM tpcds.sf100.item;
create table IF NOT EXISTS hive.tpcds3.promotion as SELECT * FROM tpcds.sf100.promotion;
create table IF NOT EXISTS hive.tpcds3.reason as SELECT * FROM tpcds.sf100.reason;
create table IF NOT EXISTS hive.tpcds3.ship_mode as SELECT * FROM tpcds.sf100.ship_mode;
create table IF NOT EXISTS hive.tpcds3.store as SELECT * FROM tpcds.sf100.store;
create table IF NOT EXISTS hive.tpcds3.store_returns as SELECT * FROM tpcds.sf100.store_returns;
create table IF NOT EXISTS hive.tpcds3.store_sales as SELECT * FROM tpcds.sf100.store_sales;
create table IF NOT EXISTS hive.tpcds3.time_dim as SELECT * FROM tpcds.sf100.time_dim;
create table IF NOT EXISTS hive.tpcds3.warehouse as SELECT * FROM tpcds.sf100.warehouse;
create table IF NOT EXISTS hive.tpcds3.web_page as SELECT * FROM tpcds.sf100.web_page;
create table IF NOT EXISTS hive.tpcds3.web_returns as SELECT * FROM tpcds.sf100.web_returns;
create table IF NOT EXISTS hive.tpcds3.web_sales as SELECT * FROM tpcds.sf100.web_sales;
create table IF NOT EXISTS hive.tpcds3.web_site as SELECT * FROM tpcds.sf100.web_site;

