terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "eu-central-1"
}

module "webserver_cluster" {
  source = "../../../../modules/services/webserver-cluster"
  ami = "ami-0233214e13e500f77"
  cluster_name           = var.cluster_name
  db_remote_state_bucket = var.db_remote_state_bucket
  db_remote_state_key    = var.db_remote_state_key

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 10

  enable_autoscaling = true
  custom_tags = {
    Owner = "team-foo"
    DeployedBy = "terraform"
  }
}