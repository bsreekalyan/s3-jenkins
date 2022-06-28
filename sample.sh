#!/bin/bash

set -e

number_of_environments=`echo $env | tr -cd , | wc -c`
number_of_environments=`expr $number_of_environments + 1`
for i in $(seq 1 $number_of_environments)
do
echo $env | cut -d "," -f $i
aws s3 cp --recursive "s3://sreekalyan-enterprise/release/${PROJECTS}/${VERSION}-${RC_VERSION}" "s3://sreekalyan-enterprise/release/${PROJECTS}/${VERSION}"
done