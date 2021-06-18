terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "local" {} # this line isn't actually required as its the default, but its helpful for this introduction
}

provider "aws" {
  region = "eu-west-1"
}