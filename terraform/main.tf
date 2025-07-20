
variable "AWS_REGION" {}
variable "AWS_PROFILE" {}

terraform {
  required_version = ">= 1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }
  // Ordinarily, we would want to store the tfstate in an S3 bucket,
  // but for this example, we are using a local backend to keep things simple.
  backend "local" {
    path = "./terraform.tfstate"
  }
}

locals {
  cognito_user_pool_name = "MyExampleCognitoUserPool"
  cognito_user_pool_client_name = "MyExampleCognitoUserPoolClient"
}

provider "aws" {
  region  = var.AWS_REGION
  profile = var.AWS_PROFILE
}

module "aws_cognito_user_pool" {
  source = "./modules/aws_cognito_user_pool"
  name   = local.cognito_user_pool_name
}

module "aws_cognito_user_pool_client" {
  source = "./modules/aws_cognito_user_pool_client"
  name   = local.cognito_user_pool_client_name
  user_pool_id = module.aws_cognito_user_pool.id
}
