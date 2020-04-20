#!/bin/bash
echo "$(which scp)"
scp target/test-docker-app-1.0.war docker@192.168.99.101:/home/docker/wildfly_deployments/test-docker-app-1.0.war