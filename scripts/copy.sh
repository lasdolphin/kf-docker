#!/usr/bin/env sh
set -eu pipefile

cp repository/Dockerfile builddir/Dockerfile
cp jq-github-release/jq-linux64 builddir/jq && chmod +x builddir/jq


## we have got the version of the kubectl in kubectl-release/kubectl-version
wget -q -O builddir/kubectl "https://storage.googleapis.com/kubernetes-release/release/$(cat kubectl-release/kubectl-version)/bin/linux/amd64/kubectl" && chmod +x builddir/kubectl