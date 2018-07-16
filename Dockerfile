FROM python:3-alpine

RUN pip install boto3

RUN apk add --no-cache bash

ADD assets /assets

ENTRYPOINT ["/assets/bin/entrypoint"]
