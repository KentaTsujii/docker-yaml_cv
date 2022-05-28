#!/bin/bash

STYLE_FILE=$1
STYLE_FILE=${STYLE_FILE:="yaml_cv/style.txt"}

docker run --rm \
	   -v $PWD/output:/output \
	   -v $PWD/input:/input \
	   -v STYLE_FILE:/style/style.txt \
	   yaml_cv_env \
	   ruby make_cv.rb -i /input/data.yaml -o /output/output.pdf 

