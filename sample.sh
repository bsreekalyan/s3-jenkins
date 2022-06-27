#!/bin/bash

set -e

number_of_environments=`echo $env | tr -cd , | wc -c`
i=0
while true; do
    if [[ "$i" -gt $number_of_environments ]]; then
    exit 1
    fi
    i=i+1
    echo $env | cut -d "," -f $i
done