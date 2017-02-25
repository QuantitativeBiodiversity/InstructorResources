while read EachLine
do
echo $EachLine
cd ./$EachLine
rm ./$1
cd ..
done < $2
