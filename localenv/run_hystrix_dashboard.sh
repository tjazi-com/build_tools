#!/bin/sh

set -e

cd infra_hystrix_dashboard/core
mvn clean test spring-boot:run
