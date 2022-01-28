#!/bin/bash

set -ex

PRESTO="../presto/presto-cli/target/presto-cli-0.266-SNAPSHOT-executable.jar"

QUERIES=$(ls tpcds-sql/queries | sort -n -t q -k 2)

for QUERY in ${QUERIES}; do
	echo "Exec query ${QUERY}"
	echo "QUERY ${QUERY} BEGIN" >> query_resut.log
	${PRESTO} --catalog hive --schema tpcds1 -f ./tpcds-sql/queries/${QUERY} >> query_resut.log
	echo "QUERY ${QUERY} END" >> query_resut.log
	sleep 60
done

