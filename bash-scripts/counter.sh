#!/usr/bin/env bash


COUNT=1
USER=$1

while [ $COUNT -lt $USER ]
do
	echo "Count: $COUNT"
	((COUNT++))
done

echo "Loop Finished"
exit 0
