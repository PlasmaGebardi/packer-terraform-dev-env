#!/bin/bash

BUCKET="packer-terraform-s3-storage"

echo "Fetching S3 bucket contents"
aws s3 sync s3://${BUCKET} s3