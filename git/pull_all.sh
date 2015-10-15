#!/bin/bash
for directory in `ls -d -- */`
do
	pushd . > /dev/null
	echo "$directory" && cd $directory && git pull
	echo "-------------------------------------------------------------------"
	popd > /dev/null
done
