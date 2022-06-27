#!/bin/bash

set -e

number_of_environments=`echo $env | tr -cd , | wc -c`
let number_of_environments+=1
for i in $(seq 1 $number_of_environments)
do
echo $env | cut -d "," -f $i
done