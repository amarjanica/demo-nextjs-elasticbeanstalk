#!/bin/bash
set -e
EXIT_CODE=0

cd /var/app/staging
runuser -u webapp -- npm i --omit=dev || EXIT_CODE=$?
echo $EXIT_CODE
