# docker-terraform

[![Docker Automated build](https://img.shields.io/docker/cloud/automated/tinslice/terraform.svg?style=flat)](https://hub.docker.com/r/tinslice/terraform/builds)
[![Docker Build Status](https://img.shields.io/docker/cloud/build/tinslice/terraform.svg?style=flat)](https://hub.docker.com/r/tinslice/terraform/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/tinslice/terraform.svg?style=flat)](https://hub.docker.com/r/tinslice/terraform/)
[![license](https://img.shields.io/github/license/tinslice/docker-terraform.svg)](https://github.com/tinslice/docker-terraform)

Docker images for running Terraform templates on various cloud providers.

Available images: 

- terraform: `0.12.25`, `0.12.24`, `0.12.2`, `0.11.14`   
- aws-cli: `aws`, `0.12.25-aws`, `0.12.24-awscli`, `0.12.2-awscli`, `0.11.14-awscli`  

## Usage

### aws-cli examples

```bash
docker run --rm -it -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" tinslice/terraform:0.12.25-aws bash
```

Run from bash script

```bash
#!/usr/bin/env bash
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION=""

docker run --rm -it -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" -v $PWD:/workspace tinslice/terraform:0.12.25-aws bash
```
