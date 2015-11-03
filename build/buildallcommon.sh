#!/bin/bash

set -e

projectstobuild=("lib_messaging_rest"
				 "profiles/messages" "profiles/client"
				 "profiles_creator/messages" "profiles_creator/client"
				 "security/messages" "security/client"
				 )

for project in ${projectstobuild[@]}
do
	echo "-------------------------------------------------------------"
	echo $project
	pushd . > /dev/null

	cd $project
	mvn -q clean test verify install
	
	popd > /dev/null
done
