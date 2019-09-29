#!/usr/bin/env bash
set -eu pipefile

log () {
  echo "--------------- $1 ---------------"
  $1 --version
  echo "----------------------------------"
  echo ""
}

log bash
log curl
log jq
log kubectl