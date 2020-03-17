#!/bin/bash

set -e
set -x

DIR=$(cd "$(dirname "$0")"; pwd -P)

hugo

# directory to backup
SERVER_DIR="www"

BUILD_DIR="$DIR/limesurvey"


. "$DIR/env-creds.sh"

#yafc fish://"$SERVER_USER"@"$SERVER"
yafc  <<**
open fish://"$SERVER_USER":$SERVER_PASS@"$SERVER"
mkdir "$SERVER_DIR"
cd "$SERVER_DIR"
# UNCOMMENT TO CLEANUP
put -rf $BUILD_DIR
mkdir resources
close
**

curl "http://www.google.com/ping?sitemap=https://www.k8s-school.fr/sitemap.xml"
