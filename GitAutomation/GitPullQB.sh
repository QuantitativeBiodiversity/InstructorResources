while read EachLine
do
echo $EachLine
cd ./$EachLine
git fetch origin
git merge origin/master
cd ../
done < $1
