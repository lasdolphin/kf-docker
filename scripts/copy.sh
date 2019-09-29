#!/usr/bin/env sh
set -eu pipefile

mv repository/Dockerfile builddir/Dockerfile
mv jq-github-release/jq-linux64 builddir/jq && chmod +x builddir/jq
mv kf-cli-release/kf builddir/kf && chmod +x builddir/kf


## we have got the version of the kubectl in kubectl-release/kubectl-version
wget -q -O builddir/kubectl "https://storage.googleapis.com/kubernetes-release/release/$(cat kubectl-release/kubectl-version)/bin/linux/amd64/kubectl" && chmod +x builddir/kubectl