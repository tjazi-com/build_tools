#!/bin/sh

set -e

cd infra_config_server/core
mvn clean test spring-boot:run
