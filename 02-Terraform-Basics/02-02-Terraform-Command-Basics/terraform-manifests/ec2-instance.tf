# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-00ca32bbc84273381" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
  subnet_id     = "subnet-0cd1edd336eb850bb" #most likely it needs to be added as per previous error
}
