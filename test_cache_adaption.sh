PRESTO="../presto/presto-cli/target/presto-cli-0.266-SNAPSHOT-executable.jar"

start_tick=$(date +%s)

for (( i=0; i < 4; i++ )); do
  echo "epoch ${i}"
  ${PRESTO} --catalog hive --schema tpcds10  -f tpcds-sql/queries/q1.sql > /dev/null
  ${PRESTO} --catalog hive --schema tpcds10  -f tpcds-sql/queries/q2.sql > /dev/null
  ${PRESTO} --catalog hive --schema tpcds10  -f tpcds-sql/queries/q3.sql > /dev/null
  ${PRESTO} --catalog hive --schema tpcds10  -f tpcds-sql/queries/q4.sql > /dev/null
done

end_tick=$(date +%s)

echo -e "cost $(( end_tick - start_tick )) s"
