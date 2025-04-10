/usr/local/bin/aws s3 mv /tmp/order.csv "s3://prd-data-transform-bucket/order_date_$(date +%Y%m%d%H%M%S).csv" >> /root/log 2>&1
exit 0