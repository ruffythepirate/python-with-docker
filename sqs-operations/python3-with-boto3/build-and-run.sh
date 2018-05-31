#!/bin/bash

docker build -t python3-with-boto3 .

docker run python3-with-boto3
