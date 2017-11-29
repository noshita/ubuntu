#!/bin/sh

USER=$1
BOX=$2
VERSION=$3
VAGRANT_CLOUD_TOKEN=$4

# リリース
curl \
  --header "Authorization: Bearer ${VAGRANT_CLOUD_TOKEN}" \
  https://app.vagrantup.com/api/v1/box/${USER}/${BOX}/version/${VERSION}/release \
  --request PUT