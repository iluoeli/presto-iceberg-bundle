PRESTO="../presto/presto-cli/target/presto-cli-0.266-SNAPSHOT-executable.jar"

start_tick=$(date +%s)

PRESTO="../presto/presto-cli/target/presto-cli-0.266-SNAPSHOT-executable.jar"

# 1. create table
${PRESTO} --execute "drop table hive.tpcds10.store_returns; create table IF NOT EXISTS hive.tpcds10.store_returns as SELECT * FROM tpcds.sf10.store_returns limit 240000;"

for offset in `seq 0 240000 2875432`; do
  limit=$(( offset + 240000 ))
  echo "epoch ${i} [${offset}, ${limit}]"
  bash insert_table.sh store_returns ${offset} ${limit}
  for (( i=0; i < 4; i++ )); do
    ${PRESTO} --catalog hive --schema tpcds10  -f tpcds-sql/queries/q1.sql > /dev/null
    sleep 15
  done
done

end_tick=$(date +%s)

echo -e "cost $(( end_tick - start_tick )) s"
