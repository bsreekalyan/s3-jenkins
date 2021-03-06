#!/bin/bash

set -e

number_of_environments=$(echo "$env" | tr -cd , | wc -c)
number_of_environments=$((number_of_environments + 1))

for i in $(seq 1 "$number_of_environments")
do
    current_project=$(echo "$env" | cut -d "," -f "$i")
    aws s3 cp --recursive "s3://sreekalyan-enterprise-1/release/${current_project}/${VERSION}-${RC_VERSION}" "s3://sreekalyan-enterprise-1/release/${current_project}/${VERSION}"
done

# # Check the copy is successful
# aws s3 ls "s3://sreekalyan-enterprise-1/release/${PROJECTS}/${VERSION}" 2>/dev/null
# copy_check=$?
# if [ $copy_check == 0 ]; then
#      count_origion=$(aws s3 ls "s3://sreekalyan-enterprise-1/release/${PROJECTS}/${VERSION}-${RC_VERSION}")
#      count_destination=$(aws s3 ls "s3://sreekalyan-enterprise-1/release/${PROJECTS}/${VERSION}")
#      if [ "$count_origion" == "$count_destination" ]; then
#         echo " The copy is successful"
#      else
#         echo " The copy is not complete, Please check the bucket contents manually"
#         exit 1
#     fi
# else
#      echo "Something went wrong ! please check bucket contents manually through UI"
#      exit 1
# fi