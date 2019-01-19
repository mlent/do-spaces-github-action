s3cmd sync \
  --access-key=$ACCESS_KEY \
  --secret-key=$SECRET_KEY \
  --host=ams3.digitaloceanspaces.com \
  --acl-public \
  --region=ams3 \
  --skip-existing \
  --verbose \
  $GITHUB_WORKSPACE/images s3://notanomadblog/images/

echo "It worked!"
