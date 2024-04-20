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
}
resource "aws_instance" "My-instance" {
  instance_type = "t2.micro"
  ami = "ami-03f4878755434977f"
  count = 1
  tags = {
  Name = "Applied_Devops"
  }
  }
