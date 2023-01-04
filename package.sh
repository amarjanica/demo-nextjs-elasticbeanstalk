#!/bin/bash

declare -r app_name="package-demo"
declare -r version="1.0"
# Stops execution of the script if error
set -e

export NODE_ENV=production
npm run build

zip -r app.zip .platform .next pages public styles *.json *.js
