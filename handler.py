import logging
import boto3

def get_buckets():
    s3 = boto3.client('s3')
    response = s3.list_buckets()
    # Output the bucket names
    print('Existing buckets:')
    print(response['Buckets'][0]["Name"])
    #for bucket in response['Buckets']:
        #print(f'  {bucket["Name"]}')


if __name__=='__main__':
    get_buckets()
  