#!/usr/bin/env bash 
set -euo pipefail

## Check to make sure required arguments passed to the script
: ${1:? "You must enter concourse target name as the first argument"}
export CONCOURSE_TARGET=$1


## deploy pipeline
fly -t $CONCOURSE_TARGET set-pipeline --pipeline kf-docker --config ./pipeline.yml -n
 
