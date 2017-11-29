#!/bin/sh

USER=$1
BOX=$2
VERSION=$3
VAGRANT_CLOUD_TOKEN=$4
PATHTOBOXFILE=$5

provider=$6

# アップロードURLの取得
response=$(curl \
  --header "Authorization: Bearer ${VAGRANT_CLOUD_TOKEN}" \
  https://app.vagrantup.com/api/v1/box/${USER}/${BOX}/version/${VERSION}/provider/${provider}/upload)
upload_path=$(echo "$response" | jq .upload_path | sed 's/"//g')

echo $upload_path

# Boxをアップロード
curl --request PUT --upload-file ${PATHTOBOXFILE} $upload_path

echo ""
echo "Uploaded Vagrant Box"
echo ""