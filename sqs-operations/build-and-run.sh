#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage: 'build-and-run <aws-region>'"
    exit 1
fi


docker build -t python3-with-boto3 . &> /dev/null

docker run -e AWS_DEFAULT_REGION=$1 \
  -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  python3-with-boto3
