# Response Management Test Data Loader
This repository contains test data and documents the cURL requests for loading it into Response Management.

## Create Social Survey
Run `./createsurvey.sh` which performs this cURL request:

```
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
```

Make a note of the returned survey ID because it's required for the next step.

## Create Social Survey Classifiers
Edit then run `./createsurveyclassifiers.sh`, substituting the survey ID returned from the Create Social Survey request above for {surveyID}. This scripts performs these two cURL requests:

```
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
```

```
curl -i -X POST \
  http://surveysvc/surveys/{surveyID}/classifiers \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0' \
  -H 'Content-Type: application/json' \
  -d '{
        "name": "COMMUNICATION_TEMPLATE",
        "classifierTypes": [
          "COLLECTION_EXERCISE"
        ]
      }'
```

## Upload Social Survey Sample File
Run `./uploadsamplefile.sh` which performs this cURL request:

```
curl -i -X POST \
  http://samplesvc/samples/SOCIAL/fileupload \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0' \
  -H 'content-type: multipart/form-data' \
  -F file=@./Social_Pilot_Sample.csv
 ```

 ## Get Sample Summaries
 Run `./getsamplesummaries.sh` which performs this cURL request:

 ```
 curl -i -X GET \
  http://samplesvc/samples/samplesummaries \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0'
 ```

 ## Copyright
 Copyright (C) 2018 Crown Copyright (Office for National Statistics)
 