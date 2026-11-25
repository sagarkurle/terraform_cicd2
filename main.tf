terraform {
  backend "s3" {
    bucket       = "sagarkurle-terraform-state-2026"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2_new" {
  ami           = "ami-0d27e0fb3bac4d724"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2_111"
  }
}