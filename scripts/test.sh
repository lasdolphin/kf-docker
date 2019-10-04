#!/usr/bin/env bash
set -eu pipefile

log () {
  echo "--------------- $1 ---------------"
  $1 $2
  echo "----------------------------------"
  echo ""
  echo ""
  echo ""
}

log bash --version
log curl --version
log jq --version
log kubectl "version --client"
log kf version
log gcloud version
log gsutil version
log git --version
log docker --version