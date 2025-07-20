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

frontend-start:
	NVM_DIR="$${HOME}/.nvm" && . "$${NVM_DIR}/nvm.sh" && cd react-app && nvm use && npm run dev

frontend-install-dependencies:
	NVM_DIR="$${HOME}/.nvm" && . "$${NVM_DIR}/nvm.sh" && cd react-app && nvm use && npm install

frontend-lint:
	NVM_DIR="$${HOME}/.nvm" && . "$${NVM_DIR}/nvm.sh" && cd react-app && nvm use && npm run lint

frontend-compile:
	NVM_DIR="$${HOME}/.nvm" && . "$${NVM_DIR}/nvm.sh" && cd react-app && nvm use && npm run tsc
