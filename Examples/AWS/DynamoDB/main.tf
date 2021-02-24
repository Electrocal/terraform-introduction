resource "aws_dynamodb_table" "example_table" {
  name           = "ExampleTable"
  billing_mode   = "PROVISIONED"
  read_capacity  = 10
  write_capacity = 10

  attribute {
    name = "Id"
    type = "N" # Number
  }

  attribute {
    name = "Apples"
    type = "S" # String
  }

  attribute {
    name = "Oranges"
    type = "B" # Binary
  }

  server_side_encryption {
    enabled     = true
    kms_key_arn = aws_kms_key.dynamodb_key.arn # Reference the ARN for the KMS encryption key. As Terraform is modular in the same folder this doesn't need to be imported
  }

  tags   = {
    Name = "example_table"
    Env  = "terraform_examples"
  }
}