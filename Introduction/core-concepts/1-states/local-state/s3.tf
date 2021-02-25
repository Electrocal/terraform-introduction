resource "aws_s3_bucket" "local_example_bucket" {
  bucket = ""
  acl    = "private"

  tags = {
    Env  = "terraform_examples"
  }
}