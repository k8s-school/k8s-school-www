#!/bin/sh

set -e
set -x
DIR=$(cd "$(dirname "$0")"; pwd -P)
WWW="$DIR/../k8s-school.github.io"

LOCAL_WWW="$DIR/public/"

rm -rf "$LOCAL_WWW/*" "$WWW/*"

hugo
rsync -r  "$LOCAL_WWW" "$WWW"
cd "$WWW"
git add .
git commit -m "Update"
git push
cd -
