resource "aws_s3_bucket" "local_example_bucket" {
  bucket = "pleasepleaseletmehavethisfuckingbucketname"
  acl    = "private"

  tags = {
    Name            = "pleasepleaseletmehavethisfuckingbucketname"
    IsAFuckinBucket = true
    Env             = "terraform_examples"
  }
}