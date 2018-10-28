#!/bin/bash

GAME="packerfactorio.zip"

echo "Starting server with savefile: ${GAME}"

if [ ! -f ./save/${GAME} ]
then
  echo "Save not found, creating new map"
  ./bin/x64/factorio --create ./save/packerfactorio.zip
fi

./bin/x64/factorio --start-server ./save/${GAME} \
  --server-settings ./config/server-settings.json
