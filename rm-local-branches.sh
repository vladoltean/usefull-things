#!/bin/zsh

# Utility script that helps you remove branches that are no longer on remote

echo 'Fetching branches...'
git fetch -p
echo 'Branches fetched.'


if [ "$1" != 'yes' ]; then
	echo -e "\e[1;32mBranches that could be removed:\e[0m"
else
	echo Removing branches that are gone from remote and appear localy...
fi

for branch in `git branch -vv | grep ': gone'| awk '{print $1}'`
do

	if [ "$1" = 'yes' ]; then
		echo -e "\e[31;1mRemoving\e[0m $branch ..."
	else
		echo $branch
	fi

	if [ "$1" = 'yes' ]; then
		git branch -D $branch;
	fi
done

if [ "$1" != 'yes' ]
  then
	echo -e 'If you want to remove those local branches re-run the program with the first argument as \e[34;1myes\e[0m';
	exit 1;
fi

