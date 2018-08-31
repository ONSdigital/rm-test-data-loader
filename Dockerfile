FROM alpine:latest
RUN apk update && apk add --no-cache curl && apk add --no-cache bash
WORKDIR /home
COPY ./Social_Pilot_Sample.csv .
COPY ./README.md .
CMD /bin/bash