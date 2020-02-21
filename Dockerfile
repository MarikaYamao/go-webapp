FROM golang:latest

COPY ./apt.conf /etc/apt/apt.conf

RUN mkdir /go/src/work
WORKDIR /go/src/work
ADD . /go/src/work

RUN apk update \
  && apk add --no-cache git \
  && go get -u github.com/aws/aws-sdk-go \
  && go get -u github.com/rs/xid \
  && go get -u github.com/guregu/dynamo \
