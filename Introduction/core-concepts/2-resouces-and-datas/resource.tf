resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id # We can reference the data object like this, so we don't need to hardcode anything 
  instance_type = "t3.micro"
}