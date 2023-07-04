#!/bin/bash
if [ $# -lt 1 ]
then
printf "usage: ./4xxspike.sh API_GW_ENDPOINT\ne.g. ./4xxspike.sh https://apiID123.execute-api.eu-west-1.amazonaws.com/stage/pets\n"
else
for i in {1..500}
do
   curl -s $1 > /dev/null
   sleep 0.1
done
fi
