#!/bin/sh

aws dynamodb put-item \
    --table-name taar_addon_data \
    --item file://record.json \
    --return-consumed-capacity TOTAL \
    --endpoint-url http://localhost:8000
