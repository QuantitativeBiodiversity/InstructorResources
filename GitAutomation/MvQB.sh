while read EachLine
do
echo $EachLine
cd $EachLine
mv $1 $2
cd ..
done < $3
