locals {
  example_user_name = "Jeff"
}

resource "aws_iam_user" "example_user" {
  name = local.example_user_name
  path = "/dev/"

  tags  = {
    Env = "terraform_examples"
  }
}

resource "aws_iam_user_policy" "test_user_policy" {
  name = "test_policy"
  user = aws_iam_user.example_user.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:*",
        "lambda:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}