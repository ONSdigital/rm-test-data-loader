#!/usr/bin/env bash
# Gets sample summaries
# Usage: ./getsamplesummaries.sh
#
curl -i -X GET \
  http://samplesvc/samples/samplesummaries \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0'
