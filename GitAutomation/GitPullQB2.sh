#!/usr/bin/bash

#- GitPullQB.sh v 0.1

## usage: GitPullQB.sh [options] <argv> ...
##	-h		Show help options
## 	-v 		Print version info
##	argv[1]	Repo List

help=$(grep "^## " "${BASH_SOURCE[0]}" | cut -c 4-)
version=$(grep "^#- " "${BASH_SOURCE[0]}" | cut -c 4-)
 
opt_h() {
echo "$help"
}
 
opt_v() {
echo "$version"
} 

while getopts "hv" opt; do
eval "opt_$opt" 
done

if [ ${BASH_ARGV[*]} == ""]; then
	echo "$help"
else

while read EachLine
do
echo $EachLine
cd ./$EachLine
git fetch origin
git merge origin/master
cd ../
done < ${BASH_ARGV[1]}

fi
exit 0

