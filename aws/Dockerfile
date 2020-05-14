ARG ALPINE_VERSION=3.11
FROM alpine:${ALPINE_VERSION}

ARG TERRAFORM_VERSION=0.12.2

RUN apk add --update --no-cache git curl bash openssh-client jq

ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip ./

RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN apk add --update --no-cache python py-pip && \
    pip install awscli --upgrade && \
    apk -v --purge del py-pip