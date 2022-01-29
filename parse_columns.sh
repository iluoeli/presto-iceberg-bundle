#!/bin/bash
PRESTO="../presto/presto-cli/target/presto-cli-0.266-SNAPSHOT-executable.jar"
tables=$($PRESTO --execute "show tables from hive.tpcds10;" | sed "s/\"//g")
mkdir -p "columns"
for table in ${tables}; do
  columns=$($PRESTO --catalog hive --schema tpcds10 --execute "describe ${table};" | cut -d ',' -f1 | sed "s/\"//g"  |  tr '\n' ',')
  columns=${columns%?}
  echo -e "TABLE ${table} columns:\n${columns}"
  echo "${columns}" > "columns/${table}.txt"
done

