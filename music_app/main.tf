terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
region = "ap-south-1"
access_key = "AKIAZI2LCH2RLU5PG55C"
secret_key = "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"
}
resource "aws_instance" "My-instance" {
  instance_type = "t2.micro"
  ami = "ami-03f4878755434977f"
  count = 1
  tags = {
  Name = "Applied_Devops"
  }
  }