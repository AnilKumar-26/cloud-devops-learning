terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.51.0"
    }
  }
}


  provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-02167eae61967e403"
  instance_type = "t2.micro"

  tags = {
    Name = "testinstance"
  }
}