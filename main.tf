
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2_new" {
  ami           = "ami-0d27e0fb3bac4d724"
  instance_type = "t2.micro"
  count         = 2

  tags = {
    Name = "my_ec2_instance_${count.index + 1}"
  }
}
