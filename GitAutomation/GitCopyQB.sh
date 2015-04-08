while read EachLine
do
echo $EachLine
cp -r $1 ./$EachLine/
done < $2
