FROM golang:1.13-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

ENV GO111MODULE=off
WORKDIR /go/src/
RUN go get -v -u k8s.io/test-infra/kubetest

