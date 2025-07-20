include .env

terraform-init:
	terraform -chdir=terraform init

terraform-apply:
	TF_VAR_AWS_REGION=$(AWS_REGION) \
	TF_VAR_AWS_PROFILE=$(AWS_PROFILE) \
    terraform -chdir=terraform apply

terraform-destroy:
	TF_VAR_AWS_REGION=$(AWS_REGION) \
	TF_VAR_AWS_PROFILE=$(AWS_PROFILE) \
	terraform -chdir=terraform destroy

terraform-show:
	terraform -chdir=terraform show

terraform-fmt:
	terraform -chdir=terraform fmt --recursive
