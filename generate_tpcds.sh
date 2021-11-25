#!/bin/bash
set -ex

sudo yum install -y gcc make flex bison byacc git
mkdir -p ~/git_repo
git clone https://github.com/gregrahn/tpcds-kit.git ~/git_repo/tpcds-kit
cd tpcds-kit/tools && make OS=LINUX
TPCDS_HOME=~/git_repo/tpcds-kit

# set data scale (unit: GB)
SCALE=1

# set directory to store data
DATA_DIR=$TPCDS_HOME/tpcds_${SCALE}g/data
if [ ! -d $DATA_DIR ]; then
    mkdir -p $DATA_DIR
fi

# set directory to store queries
QUERY_DIR=$TPCDS_HOME/tpcds_${SCALE}g/query
if [ ! -d $QUERY_DIR ]; then
    mkdir -p $QUERY_DIR
fi

# generate data
$TPCDS_HOME/tools/dsdgen \
    -DIR $DATA_DIR \
    -SCALE ${SCALE} \
    -DELIMITER , \
    -DISTRIBUTIONS $TPCDS_HOME/tools/tpcds.idx

# generate queries
$TPCDS_HOME/tools/dsqgen \
    -INPUT $TPCDS_HOME/query_templates/templates.lst \
    -DIRECTORY $TPCDS_HOME/query_templates \
    -SCALE ${SCALE} \
    -QUALIFY Y \
    -OUTPUT_DIR $QUERY_DIR \
    -DISTRIBUTIONS $TPCDS_HOME/tools/tpcds.idx

