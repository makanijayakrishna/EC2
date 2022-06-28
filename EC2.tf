terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = "~> 1.1.0"
}

provider "aws" {
  region  = "us-east-1"
  access_key = "AKIA3H73GG3GBDEKF4JV"
  secret_key = "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"
  
  }

resource "aws_instance" "Terraformtest1" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  key_name      = "AWS Terraformkeypair"

  tags = {
    Name = "testing 2017"
   
  }
}
resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1c"
  size              = "8"
  type              = "gp2"

  tags = {
    Name = "usuage"
  }
}
