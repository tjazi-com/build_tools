#!/bin/bash

set -e

projectstobuild=("lib_messaging_rest"
				 "profiles/messages" "profiles/client"
				 "profiles_authorizer/messages" "profiles_authorizer/client"
				 "profiles_authenticator/messages" "profiles_authenticator/client"
				 "profiles_creator/messages" "profiles_creator/client"
				 "security/messages" "security/client" "security/common"
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
