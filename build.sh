#!/bin/bash

git submodule update --init

docker build -t yaml_cv_env .

