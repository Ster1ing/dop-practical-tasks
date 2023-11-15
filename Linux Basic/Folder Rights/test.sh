#!/bin/bash

#find ./somefolder -type d -exec chmod +t {} \;

foldername='./somefolder'

for dir in $(find $foldername -type d)
do
	if [[ $(basename $dir) == "sharedfolder" ]]; then
		chmod g+s $dir
		continue
	fi
	chmod +t $dir
done 
