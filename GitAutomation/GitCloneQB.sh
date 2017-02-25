#!/bin/bash
while read EachLine
do
echo $EachLine
git clone git@github.com:QBstudents/$EachLine.git
done < $1
