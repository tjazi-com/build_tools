#!/bin/sh

set -e

cd test_webconsole/core
mvn clean test spring-boot:run
# /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome http://127.0.0.1:8080  &
