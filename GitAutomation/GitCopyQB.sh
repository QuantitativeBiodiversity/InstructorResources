while read EachLine
do
echo $EachLine
cp -r $1 ./$EachLine/$2
done < $3
