ARG TERRAFORM_VERSION=0.12.2
FROM tinslice/terraform:${TERRAFORM_VERSION}

RUN apk add --update --no-cache python py-pip && \
    pip install awscli --upgrade && \
    apk -v --purge del py-pip