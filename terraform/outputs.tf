
output "aws_cognito_user_pool_id" {
  value = module.aws_cognito_user_pool.id
}

output "aws_cognito_user_pool_client_id" {
  value = module.aws_cognito_user_pool_client.id
}
