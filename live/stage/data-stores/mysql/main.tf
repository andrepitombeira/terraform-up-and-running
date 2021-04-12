provider "aws" {
  region = "eu-central-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix = "terraform-up-and-running"
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  name = "example_database"
  username = "admin"
  password = data.aws_secretsmanager_secret_version.db_password.secret_string
}

data "aws_secretsmanager_secret_version" "db_password" {
  secret_id = "mysql-master-password-stage"
}

terraform {
  backend "s3" {
    key = "stage/data-stores/mysql/terraform.tfstate"
    bucket = "terraform-up-and-running-state-bucket-12345"
    region = "eu-central-1"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}