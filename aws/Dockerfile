FROM tinslice/terraform:0.11.14

RUN apk add --update --no-cache python py-pip && \
    pip install awscli --upgrade && \
    apk -v --purge del py-pip