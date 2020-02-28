FROM golang:latest

COPY ./apt.conf /etc/apt/apt.conf

RUN mkdir /go/src/work
WORKDIR /go/src/work
ADD . /go/src/work

RUN go get github.com/stretchr/gomniauth github.com/gorilla/websocket \
    github.com/clbanning/x2j github.com/ugorji/go/codec gopkg.in/mgo.v2/bson