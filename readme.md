# Docker images for running Terraform templates on various cloud providers

Available images: 

- terraform: `0.11.14`, `0.12.2`
- aws-cli: `0.11.14-awscli`, `0.12.2-awscli`

## Usage

### aws-cli examples

```bash
docker run --rm -it -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" tinslice/terraform:0.11.14-awscli bash
```