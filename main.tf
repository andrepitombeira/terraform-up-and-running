provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami = "ami-0233214e13e500f77"
  instance_type = "t2.micro"

  tags = {
    "Name" = "terraform-example"
  }
}