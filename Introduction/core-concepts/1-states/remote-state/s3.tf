resource "aws_s3_bucket" "remote_example_bucket" {
  bucket = "pleasepleaseletmehavethisotherfuckingbucketname"
  acl    = "private"

  tags = {
    Env       = "terraform_examples"
    Terraform = "true"

  }
}