#! /bin/bash
# $1 port
# $2 output file
for ip in $(cat ips)
do
     nc -vv -w 1 -z $ip $1 & 
done &> $2 
