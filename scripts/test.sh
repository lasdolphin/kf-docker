#!/usr/bin/env bash
set -eu pipefile

log () {
  echo "--------------- $1 ---------------"
  $1 $2
  echo "----------------------------------"
  echo ""
}

log bash --version
log curl --version
log jq --version
log kubectl "version --client"
log kf version