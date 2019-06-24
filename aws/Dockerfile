FROM tinslice/terraform:0.12.2

RUN apk add --update --no-cache python py-pip && \
    pip install awscli --upgrade && \
    apk -v --purge del py-pip