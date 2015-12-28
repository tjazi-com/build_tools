#!/bin/sh

for pid in `ps aux | grep infra_ | grep jdk | awk '{print $2}'`
do
	kill $pid
done
