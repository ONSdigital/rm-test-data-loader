#!/usr/bin/env bash
# Creates Social Survey classifiers
# Usage: ./createsurveyclassifiers.sh
#
curl -i -X POST \
  http://surveysvc/surveys/{surveyID}/classifiers \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0' \
  -H 'Content-Type: application/json' \
  -d '{
        "name": "COLLECTION_INSTRUMENT",
        "classifierTypes": [
          "COLLECTION_EXERCISE"
        ]
      }'

curl -i -X POST \
  http://surveysvc/surveys/{surveyID}/classifiers \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0' \
  -H 'Content-Type: application/json' \
  -d '{
        "name": "COMMUNICATIONS_TEMPLATE",
        "classifierTypes": [
          "COLLECTION_EXERCISE"
        ]
      }'
