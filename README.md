# Response Management Test Data Loader
This repository contains test data and documents the cURL requests for loading it into Response Management.

## Upload Social Sample File
```
curl -i -X POST \
  http://samplesvc/samples/SOCIAL/fileupload \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0' \
  -H 'content-type: multipart/form-data' \
  -F file=@./Social_Pilot_Sample.csv
 ```

 ## Find Sample Summaries
 ```
 curl -i -X GET \
  http://samplesvc/samples/samplesummaries \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0'
 ```

 ## Copyright
 Copyright (C) 2018 Crown Copyright (Office for National Statistics)
 