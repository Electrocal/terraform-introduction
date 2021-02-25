terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = ""
    encrypt = true
  }
}

provider "aws" {
  region = "eu-west-1"
}