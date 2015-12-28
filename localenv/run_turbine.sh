#!/bin/sh

set -e

cd infra_turbine_server/core
mvn clean test spring-boot:run
