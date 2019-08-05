#!/bin/bash

docker run -it -v "$PWD"/volume:/files bolkimen/pythonml python /files/app.py

