create schema IF NOT EXISTS hive.tpcds1;

create table IF NOT EXISTS hive.tpcds1.call_center as SELECT * FROM hive.tpcds_1g.call_center;
create table IF NOT EXISTS hive.tpcds1.catalog_page as SELECT * FROM hive.tpcds_1g.catalog_page;
create table IF NOT EXISTS hive.tpcds1.catalog_returns as SELECT * FROM hive.tpcds_1g.catalog_returns;
create table IF NOT EXISTS hive.tpcds1.catalog_sales as SELECT * FROM hive.tpcds_1g.catalog_sales;
create table IF NOT EXISTS hive.tpcds1.customer as SELECT * FROM hive.tpcds_1g.customer;
create table IF NOT EXISTS hive.tpcds1.customer_address as SELECT * FROM hive.tpcds_1g.customer_address;
create table IF NOT EXISTS hive.tpcds1.customer_demographics as SELECT * FROM hive.tpcds_1g.customer_demographics;
create table IF NOT EXISTS hive.tpcds1.date_dim as SELECT * FROM hive.tpcds_1g.date_dim;
create table IF NOT EXISTS hive.tpcds1.dbgen_version as SELECT * FROM hive.tpcds_1g.dbgen_version;
create table IF NOT EXISTS hive.tpcds1.household_demographics as SELECT * FROM hive.tpcds_1g.household_demographics;
create table IF NOT EXISTS hive.tpcds1.income_band as SELECT * FROM hive.tpcds_1g.income_band;
create table IF NOT EXISTS hive.tpcds1.inventory as SELECT * FROM hive.tpcds_1g.inventory;
create table IF NOT EXISTS hive.tpcds1.item as SELECT * FROM hive.tpcds_1g.item;
create table IF NOT EXISTS hive.tpcds1.promotion as SELECT * FROM hive.tpcds_1g.promotion;
create table IF NOT EXISTS hive.tpcds1.reason as SELECT * FROM hive.tpcds_1g.reason;
create table IF NOT EXISTS hive.tpcds1.ship_mode as SELECT * FROM hive.tpcds_1g.ship_mode;
create table IF NOT EXISTS hive.tpcds1.store as SELECT * FROM hive.tpcds_1g.store;
create table IF NOT EXISTS hive.tpcds1.store_returns as SELECT * FROM hive.tpcds_1g.store_returns;
create table IF NOT EXISTS hive.tpcds1.store_sales as SELECT * FROM hive.tpcds_1g.store_sales;
create table IF NOT EXISTS hive.tpcds1.time_dim as SELECT * FROM hive.tpcds_1g.time_dim;
create table IF NOT EXISTS hive.tpcds1.warehouse as SELECT * FROM hive.tpcds_1g.warehouse;
create table IF NOT EXISTS hive.tpcds1.web_page as SELECT * FROM hive.tpcds_1g.web_page;
create table IF NOT EXISTS hive.tpcds1.web_returns as SELECT * FROM hive.tpcds_1g.web_returns;
create table IF NOT EXISTS hive.tpcds1.web_sales as SELECT * FROM hive.tpcds_1g.web_sales;
create table IF NOT EXISTS hive.tpcds1.web_site as SELECT * FROM hive.tpcds_1g.web_site;

