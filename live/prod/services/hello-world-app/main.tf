terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "eu-central-1"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

module "hello_world_app" {
  source = "../../../../modules/services/hello-world-app"
  server_text = "Next server text"
  environment = "Prod"
  db_remote_state_bucket = "terraform-up-and-running-state-bucket-12345"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
  instance_type = "t2.micro"
  min_size = 4
  max_size = 10
  enable_autoscaling = false
}