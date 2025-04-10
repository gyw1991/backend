#!/bin/bash

export PGHOST="prd-db.ct4ay0es0kor.ap-northeast-1.rds.amazonaws.com"
export PGDATABASE="postgres"
export PGUSER="root"
export PGPASSWORD="ae869021"

psql -c "\COPY order_main TO '/tmp/order.csv' WITH CSV DELIMITER ',';"

exit 0
