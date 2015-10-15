#!/bin/bash

set -e

projectstobuild=("lib_messaging_rest" 
				 "profiles/messages" "profiles/client"
				 "security/messages" "security/client")

for project in ${projectstobuild[@]}
do
	echo "-------------------------------------------------------------"
	echo $project
	pushd . > /dev/null

	cd $project
	mvn -q clean install
	
	popd > /dev/null
done
