while read EachLine
do
echo $EachLine
cd ./$EachLine
rmdir ./$1
cd ..
done < $2
