
import boto3

# For a Boto3 service resource
ddb = boto3.resource('dynamodb', endpoint_url='http://localhost:8000')
print(list(ddb.tables.all()))
