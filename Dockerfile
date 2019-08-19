FROM alpine:latest

LABEL maintainer="robertd"

ENV TERRAFORM_VERSION=0.12.6

RUN apk update && apk upgrade
RUN apk add --update wget unzip git

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin