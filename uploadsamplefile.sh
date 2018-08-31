#!/usr/bin/env bash
# Uploads a Social Survey sample file
# Usage: ./uploadsamplefile.sh
#
curl -i -X POST \
  http://samplesvc/samples/SOCIAL/fileupload \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0' \
  -H 'content-type: multipart/form-data' \
  -F file=@./Social_Pilot_Sample.csv
