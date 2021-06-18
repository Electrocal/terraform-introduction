# Declare a data source to find out all the availability zones
data "aws_availability_zones" "available" {
  state = "available"
}

# Create a VPC in all available zones with 2 public and 2 private subnets
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = data.aws_availability_zones.available.names
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Env       = "terraform_examples"
  }
}