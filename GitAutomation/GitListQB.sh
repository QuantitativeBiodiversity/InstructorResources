while read EachLine
do
echo $EachLine
echo https://github.com/QBstudents/$EachLine
done < $1
