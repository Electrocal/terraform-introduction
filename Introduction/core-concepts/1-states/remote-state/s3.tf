resource "aws_s3_bucket" "remote_example_bucket" {
  bucket = "fuckpissshitonmyface"
  acl    = "private"

  tags = {
    Env  = "terraform_examples"
  }
}