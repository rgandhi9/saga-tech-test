import os
from dotenv import load_dotenv
import json
import boto3

load_dotenv()

application_key_id = os.getenv('B2_APPLICATION_KEY_ID')
application_key = os.getenv('B2_APPLICATION_KEY')
bucket_name = 'saga-test'
file_name = 'customer.json'

s3 = boto3.client(
    service_name='s3',
    endpoint_url='https://s3.us-east-005.backblazeb2.com',
    aws_access_key_id=application_key_id,
    aws_secret_access_key=application_key
)

response = s3.get_object(Bucket=bucket_name, Key=file_name)

content = response['Body'].read().decode('utf-8')

print(json.loads(content))
