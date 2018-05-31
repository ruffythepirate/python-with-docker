#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage: 'run_with_python_2 <your python file>'"
    exit 1
fi

docker run -it --rm --name docker-with-python-3 -v "$PWD":/usr/src -w /usr/src python3-with-boto3 python $1

