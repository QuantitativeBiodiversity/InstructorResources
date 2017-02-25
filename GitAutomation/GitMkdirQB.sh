while read EachLine
do
echo $EachLine
cd ./$EachLine
mkdir $1
cd ..
done < $2
