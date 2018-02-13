#!/usr/bin/env python

import boto3
import json
import zlib
from pprint import pprint


class ClientFetcher:
    def __init__(self):
        self.conn = boto3.resource('dynamodb', region_name='us-west-2')
        self.table = self.conn.Table('taar_addon_data_20180206')

    def get_item(self, client_id):
        response = self.table.get_item(Key={'client_id': client_id})
        item = response['Item']
        zdata = item['json_payload'].value
        json_bytes = zlib.decompress(zdata)
        json_blob = json_bytes.decode('utf8')
        return json.loads(json_blob)


cf = ClientFetcher()
jdata = cf.get_item("000000000000000000000000000000000000")
pprint(jdata)
