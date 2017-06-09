#! /bin/bash
# $1 port
for ip in $(cat ips)
do
     nc -unvv -w 1 -z $ip $1 & 
done &> $2
