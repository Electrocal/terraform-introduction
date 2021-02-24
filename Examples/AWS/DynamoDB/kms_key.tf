resource "aws_kms_key" "dynamodb_key" {
  description              = "Example DynamoDB Encryption Key"
  deletion_window_in_days  = 1
  customer_master_key_spec = "ECC_NIST_P521"
  enable_key_rotation      = true

  tags   = {
    Env  = "terraform_examples"
  }
}