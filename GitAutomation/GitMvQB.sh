while read EachLine
do
echo $EachLine
cd $EachLine
git mv $1 $2
cd ..
done < $3
