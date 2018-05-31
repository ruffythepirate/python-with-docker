#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage: 'run_with_python_2 <your python file>'"
    exit 1
fi

echo "docker run -it --rm --name docker-with-python-2 -v \"$PWD\":/usr/src/widget_app python:2 python $1"
docker run -it --rm --name docker-with-python-2 -v "$PWD":/usr/src -w /usr/src python:2 python $1

