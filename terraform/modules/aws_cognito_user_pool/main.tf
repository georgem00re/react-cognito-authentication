
resource "aws_cognito_user_pool" "this" {
  name = var.name

  // Users will be able to log in using either their username or email address.
  alias_attributes = ["email"]

  // Cognito will automatically verify email addresses by sending a code after sign-up.
  auto_verified_attributes = ["email"]

  // Sets a minimum password length of 8 characters.
  password_policy {
    minimum_length = 8
  }

  verification_message_template {
    // Cognito will send a 4-6 digit code to the user's email address.
    default_email_option = "CONFIRM_WITH_CODE"
    email_subject = "Account Confirmation"
    email_message = "Your confirmation code is {####}"
  }

  // Users must provide an email during sign-up.
  schema {
    attribute_data_type      = "String"
    developer_only_attribute = false
    mutable                  = true
    name                     = "email"
    required                 = true

    // Provided email addresses must be between 1 and 256 characters.
    string_attribute_constraints {
      min_length = 1
      max_length = 256
    }
  }

  // MFA is disabled.
  mfa_configuration = "OFF"
}
