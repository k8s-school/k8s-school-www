#!/bin/bash

set -e
set -x

DIR=$(cd "$(dirname "$0")"; pwd -P)

hugo --minify

# directory to backup
SERVER_DIR="www"

BUILD_DIR="$DIR/public"

PDF_DIR="$BUILD_DIR/pdf"
SECURE_DIR="$BUILD_DIR/secure"

. "$DIR/env-creds.sh"

# 404 management
cp "$DIR/content/.htaccess" "$BUILD_DIR"

# Access to pdf directory
sed "s/<LOGIN>/$SERVER_USER/g" "$DIR/content/pdf/.htaccess" > "$PDF_DIR/.htaccess"
if [ -z "$HTACCESS_USER" ]; then
    >&2 echo "ERROR: undefined HTACCESS_USER in env-creds.sh"
    exit 1
fi
htpasswd -bc "$PDF_DIR/.htpasswd" "$HTACCESS_USER" "$HTACCESS_PASS"

# Access to pdf directory
sed "s/<LOGIN>/$SERVER_USER/g" "$DIR/content/secure/.htaccess" > "$SECURE_DIR/.htaccess"
if [ -z "$HTACCESS_XPERT_USER" ]; then
    >&2 echo "ERROR: undefined HTACCESS_XPERT_USER in env-creds.sh"
    exit 1
fi
htpasswd -bc "$SECURE_DIR/.htpasswd" "$HTACCESS_XPERT_USER" "$HTACCESS_XPERT_PASS"


rm -rf "$DIR/public/resources"

#yafc fish://"$SERVER_USER"@"$SERVER"
yafc  <<**
open fish://"$SERVER_USER":$SERVER_PASS@"$SERVER"
mkdir "$SERVER_DIR"
cd "$SERVER_DIR"
rm -rf *
put -rf $BUILD_DIR/*
mkdir resources
close
**

curl "http://www.google.com/ping?sitemap=https://www.k8s-school.fr/sitemap.xml"
