#!make

# terraform releases https://releases.hashicorp.com/terraform/
root_path := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

include $(root_path)/.env

image_name = tinslice/terraform

build:
	docker build --pull \
	  --build-arg ALPINE_VERSION=${ALPINE_VERSION} --build-arg TERRAFORM_VERSION=${TERRAFORM_VERSION} \
		-f $(root_path)/base/Dockerfile -t ${image_name} $(root_path)/base

build-aws:
	docker build --pull \
	  --build-arg ALPINE_VERSION=${ALPINE_VERSION} --build-arg TERRAFORM_VERSION=${TERRAFORM_VERSION} \
		-f $(root_path)/aws/Dockerfile -t ${image_name}:aws $(root_path)/aws

push:
	docker push ${image_name}

push-aws:
	docker push ${image_name}:aws

clean:
	docker rmi ${image_name};\
	docker rmi ${image_name}:aws;