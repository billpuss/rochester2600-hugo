#!/bin/bash

# setup boto
mv .boto /home/circleci/.boto

## DEBUG
#cat 2600.json

#gsutil ls
ENDPOINT="gs://staging.rochester2600.com"
echo "Uploading to $ENDPOINT"
gsutil cp -p ../build/* $ENDPOINT
