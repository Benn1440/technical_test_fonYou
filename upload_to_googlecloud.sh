#!/bin/bash

# Define variables
LOG_PATH="/var/log"
GCS_BUCKET="your_gcs_bucket"
GCS_INSTANCE="10.1.1.33"

# Generate GCS destination path
GCS_DEST_PATH="gs://${GCS_BUCKET}/log/$(date +"%Y/%m/%d")/"

# Upload the log file to Google Cloud Storage
gsutil cp "${LOG_PATH}/sample.access.log-$(date +"%Y%m%d").log" "${GCS_DEST_PATH}"
