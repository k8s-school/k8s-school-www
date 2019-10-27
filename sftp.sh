#!/bin/bash

set -e
set -x

DIR=$(cd "$(dirname "$0")"; pwd -P)

hugo

# directory to backup
SERVER_DIR="www"

BUILD_DIR="$DIR/public"

PDF_DIR="$BUILD_DIR/pdf"


. "$DIR/env-creds.sh"

# 404 management
cp "$DIR/content/.htaccess" "$BUILD_DIR"

# Access to pdf directory
sed "s/<LOGIN>/$SERVER_USER/g" "$DIR/content/pdf/.htaccess" > "$PDF_DIR/.htaccess"
htpasswd -bc "$PDF_DIR/.htpasswd" "$HTACCESS_USER" "$HTACCESS_PASS" 

rm -rf "$DIR/public/resources"

#yafc fish://"$SERVER_USER"@"$SERVER"
yafc  <<**
open fish://"$SERVER_USER":$SERVER_PASS@"$SERVER"
mkdir "$SERVER_DIR"
cd "$SERVER_DIR"
# UNCOMMENT TO CLEANUP
# rm -rf *
put -rf $BUILD_DIR/*
close
**

curl "http://www.google.com/ping?sitemap=https://www.k8s-school.fr/sitemap.xml"
