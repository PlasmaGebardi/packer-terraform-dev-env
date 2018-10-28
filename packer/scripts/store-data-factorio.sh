#!/bin/bash

GAME="packerfactorio.zip"
BUCKET="packer-terraform-s3-storage"

echo "Saving config and save data to S3"
echo "Gamefile: ${GAME}"
echo "S3 Bucket: ${BUCKET}"
aws s3 cp ./config/server-settings.json s3://${BUCKET}/config/

if [ ! -f ./save/${GAME} ]
then
  echo "No save present for current game ${GAME}, finished copying."
  exit
fi

aws s3 cp ./save/${GAME} s3://${BUCKET}/save/
