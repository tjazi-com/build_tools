#!/bin/sh

set -e

directories="infra_config_server infra_service_discovery infra_turbine_server infra_hystrix_dashboard"

for directory in $directories
do
	echo "Running service from: $directory"
        (mvn spring-boot:run -f $directory/core/pom.xml &)

        sleep 20
	echo "-------------------------------------------------------------------"
done
