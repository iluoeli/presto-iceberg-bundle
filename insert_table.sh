#/bin/bash
# Usage example: bash insert_table.sh store_returns 40000 49999
table=$1
offset=$2
limit=$3

SRC_CATALOG="tpcds"
SRC_SCHEMA="sf10"
DST_CATALOG="hive"
DST_SCHEMA="tpcds10"

PRESTO="../presto/presto-cli/target/presto-cli-0.266-SNAPSHOT-executable.jar"

COLUMNS=$(cat "columns/${table}.txt") 
SQL="INSERT INTO ${DST_CATALOG}.${DST_SCHEMA}.${table} SELECT ${COLUMNS} from (SELECT ROW_NUMBER() over() as Row, * FROM ${SRC_CATALOG}.${SRC_SCHEMA}.${table}) WHERE Row BETWEEN ${offset} AND ${limit};"
#SQL="INSERT INTO ${DST_CATALOG}.${DST_DST_SCHEMA}.${table} SELECT ${COLUMNS} from (SELECT ROW_NUMBER() over() as Row, * FROM ${SRC_CATALOG}.${SRC_SCHEMA}.${table}) WHERE Row BETWEEN ${offset} AND ${limit};"
echo -e "${SQL}"
${PRESTO} --execute "${SQL}"

