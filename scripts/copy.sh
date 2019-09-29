#!/usr/bin/env sh
set -eu pipefile

mv repository/Dockerfile builddir/Dockerfile
mv jq-github-release/jq-linux64 builddir/jq && chmod +x builddir/jq
mv kf-cli-release/kf builddir/kf && chmod +x builddir/kf



## gettheing the release version by crawling the gcloud/release/release-version notes
wget -q -O gcloud.tar.gz "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-$(cat gcloud-release/release-version | egrep -m 1 -o '[0-9]+.[0-9]+.[0-9]+' | head -n 1)-linux-x86_64.tar.gz"
tar xzf gcloud.tar.gz
mv google-cloud-sdk/bin/gcloud builddir/gcloud
mv google-cloud-sdk/bin/gsutil builddir/gsutil
mv google-cloud-sdk/bin/docker-credential-gcloud builddir/docker-credential-gcloud


## we have got the version of the kubectl in kubectl-release/kubectl-version
wget -q -O builddir/kubectl "https://storage.googleapis.com/kubernetes-release/release/$(cat kubectl-release/kubectl-version)/bin/linux/amd64/kubectl" && chmod +x builddir/kubectl



