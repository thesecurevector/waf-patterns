#!/bin/bash
if [ $# -lt 2 ]
then
printf "usage: ./load_apigw.sh API_GW_ENDPOINT CLOUDFRONT_ENDPOINT\ne.g. ./load_apigw.sh https://apiID123.execute-api.eu-west-1.amazonaws.com/stage/pets https://ditrId12345.cloudfront.net/stage/pets\n"
else
for i in {1..3600}
do
   curl -s $2 > /dev/null
   sleep 1
   z=`expr $i % 20`
   if [ $z -eq 0 ]
   then
   	curl -s $1 > /dev/null
   fi
done
fi
