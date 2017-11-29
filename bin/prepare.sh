#!/bin/sh

USER=$1
BOX=$2
VERSION=$3
VAGRANT_CLOUD_TOKEN=$4

provider=$5

# バージョンを作成
curl \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${VAGRANT_CLOUD_TOKEN}" \
  https://app.vagrantup.com/api/v1/box/${USER}/${BOX}/versions \
  --data '{ "version": { "version": "'${VERSION}'" } }'

echo ""
echo "Created Version"
echo ""

# providerを追加
curl \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${VAGRANT_CLOUD_TOKEN}" \
  https://app.vagrantup.com/api/v1/box/${USER}/${BOX}/version/${VERSION}/providers \
  --data '{ "provider": { "name": "'${provider}'" } }'

echo ""
echo "Created Provider"
echo ""