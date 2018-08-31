#!/usr/bin/env bash
# Creates a Social Survey
# Usage: ./createsurvey.sh
#
curl -i -X POST \
  http://surveysvc/surveys \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0' \
  -H 'Content-Type: application/json' \
  -d '{
        "surveyRef": "999",
        "shortName": "OHS",
        "longName": "Online Household Study (Alpha)",
        "legalBasisRef": "Vol",
        "surveyType": "Social"
      }'
