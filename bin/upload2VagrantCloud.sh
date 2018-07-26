#!/bin/sh

USER=$1
BOX=$2
VERSION=$3
VAGRANT_CLOUD_TOKEN=$4
PATHTOBOXFILE=$5

provider=virtualbox

echo ${USER} ${BOX} ${VERSION} 
echo ${VAGRANT_CLOUD_TOKEN}
echo ${PATHTOBOXFILE}

sh ./prepare.sh ${USER} ${BOX} ${VERSION} ${VAGRANT_CLOUD_TOKEN} ${provider}

sh ./upload.sh ${USER} ${BOX} ${VERSION} ${VAGRANT_CLOUD_TOKEN} ${PATHTOBOXFILE} ${provider}

sh ./release.sh ${USER} ${BOX} ${VERSION} ${VAGRANT_CLOUD_TOKEN}