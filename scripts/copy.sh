#!/usr/bin/env sh
set -eu pipefile

cp repository/Dockerfile builddir/Dockerfile
cp jq-github-release/jq-linux64 builddir/jq && chmod +x builddir/jq

