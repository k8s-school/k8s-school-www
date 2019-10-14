#!/bin/bash

set -e
set -x

DIR=$(cd "$(dirname "$0")"; pwd -P)

hugo

# directory to backup
SERVER_DIR="www"

LOCAL_DIR="$DIR/public"

PDF_DIR="$DIR/content/pdf"


. "$DIR/env-creds.sh"

#yafc fish://"$SERVER_USER"@"$SERVER"

htpasswd -bc "$PDF_DIR/.htpasswd" "$HTACCESS_USER" "$HTACCESS_PASS" 
cp -r "$PDF_DIR" "$LOCAL_DIR"

yafc  <<**
open fish://"$SERVER_USER":$SERVER_PASS@"$SERVER"
mkdir "$SERVER_DIR"
cd "$SERVER_DIR"
# rm -rf *
put -rf $LOCAL_DIR/*
close
**
