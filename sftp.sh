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


# Access to pdf directory
htpasswd -bc "$PDF_DIR/.htpasswd" "$HTACCESS_USER" "$HTACCESS_PASS" 

# 404 management
cp "$DIR/.htaccess" "$LOCAL_DIR"

#yafc fish://"$SERVER_USER"@"$SERVER"
yafc  <<**
open fish://"$SERVER_USER":$SERVER_PASS@"$SERVER"
mkdir "$SERVER_DIR"
cd "$SERVER_DIR"
# rm -rf *
put -rf $LOCAL_DIR/*
close
**
