#!/bin/sh
aws dynamodb scan --table-name taar_addon_data --endpoint-url http://localhost:8000
