#!/bin/sh
aws dynamodb create-table  \
 --table-name taar_addon_data \
 --attribute-definitions \
     AttributeName=client_id,AttributeType=S \
 --key-schema AttributeName=client_id,KeyType=HASH \
 --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 \
 --endpoint-url http://localhost:8000

