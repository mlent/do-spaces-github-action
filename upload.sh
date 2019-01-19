#!/bin/sh
set -e

sed -i '' "s/access_key =/access_key = ${ACCESS_KEY}/g" ${HOME}/.s3cfg
sed -i '' "s/secret_key =/secret_key = ${SECRET_KEY}/g" ${HOME}/.s3cfg

s3cmd sync \
  --acl-public \
  --skip-existing \
  --verbose \
  $GITHUB_WORKSPACE/images s3://notanomadblog/images/

echo "It worked!"
