#!/bin/sh

set -e

cd infra_service_discovery/core
mvn clean test spring-boot:run
