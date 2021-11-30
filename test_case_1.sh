#!/bin/bash
set -ex

PRESTO="../presto/presto-cli/target/presto-cli-0.266-SNAPSHOT-executable.jar"

# create table
${PRESTO} --user hive --execute "create table if not exists hive.default.tpcds_customer with (format='PARQUET', partitioned_by = ARRAY['c_birth_month']) as SELECT c_customer_sk, c_customer_id, c_first_name,c_birth_day,c_birth_month FROM tpcds.sf1.customer;"

# Selected partition scan
${PRESTO} --user hive --execute "select * from hive.default.tpcds_customer where c_birth_month = 1;" > /dev/null
sleep 60

${PRESTO} --user hive --execute "select * from hive.default.tpcds_customer where c_birth_month = 2;" > /dev/null
sleep 60

${PRESTO} --user hive --execute "select * from hive.default.tpcds_customer where c_birth_month = 3;" > /dev/null
sleep 60

${PRESTO} --user hive --execute "select * from hive.default.tpcds_customer where c_birth_month = 4;" > /dev/null
sleep 60

# Full table scan
${PRESTO} --user hive --execute "select * from hive.default.tpcds_customer;" > /dev/null
sleep 60

