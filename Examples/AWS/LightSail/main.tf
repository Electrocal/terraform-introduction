resource "aws_lightsail_key_pair" "example_key_pair" {
  name = "example_key_pair"
}

resource "aws_lightsail_instance" "nginx_lightsail_app" {
  name              = "example_nginx"
  availability_zone = "eu-west-1a"
  blueprint_id      = "nginx"
  bundle_id         = "nano_2_0"
  key_pair_name     = aws_lightsail_key_pair.example_key_pair.name

  tags = {
    Name = "example_lightsail_app"
    Env  = "terraform_examples"
  }

  depends_on = [ aws_lightsail_key_pair.example_key_pair ]
}