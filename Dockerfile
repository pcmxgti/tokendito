FROM python:3.7-alpine
MAINTAINER Tokendito (tokendito@dowjones.com)
RUN apk update && \
    pip install tokendito
