#!/bin/bash
DATA=$(cat app.list)
echo $DATA
for  URL in $DATA
do
echo $URL
done