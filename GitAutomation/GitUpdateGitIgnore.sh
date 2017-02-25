while read EachLine
do
echo $EachLine
cd ./$EachLine
echo $1 >> .gitignore
cd ..
done < $2
