#!/bin/sh
set -eu

s3cmd sync \
  --access_key=$ACCESS_KEY \
  --secret_key=$SECRET_KEY \
  --config=.s3cfg \
  --host=ams3.digitaloceanspaces.com \
  --acl-public \
  --region=ams3 \
  --skip-existing \
  --verbose \
  $GITHUB_WORKSPACE/images s3://notanomadblog/images/

echo "It worked!"
