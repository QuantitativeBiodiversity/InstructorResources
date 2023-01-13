while read EachLine
do
echo $EachLine
cd ./$EachLine
git fetch origin
git merge origin/main
cd ../
done < $1
