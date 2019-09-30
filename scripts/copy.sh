#!/usr/bin/env sh
set -eu pipefile

mv repository/Dockerfile builddir/Dockerfile
mv jq-github-release/jq-linux64 builddir/jq && chmod +x builddir/jq
mv kf-cli-release/kf builddir/kf && chmod +x builddir/kf



## gettheing the release version by crawling the gcloud/release/release-version notes
GCLOUD_VERSION=$(cat gcloud-release/release-version | egrep -m 1 -o 'google-cloud-sdk-[0-9]+\.[0-9]+\.[0-9]' | sort -n | head -n 1)
wget -q -O gcloud.tar.gz "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/$GCLOUD_VERSION-linux-x86_64.tar.gz"
tar xzf gcloud.tar.gz
mv -R google-cloud-sdk builddir/


## we have got the version of the kubectl in kubectl-release/kubectl-version
wget -q -O builddir/kubectl "https://storage.googleapis.com/kubernetes-release/release/$(cat kubectl-release/kubectl-version)/bin/linux/amd64/kubectl" && chmod +x builddir/kubectl



