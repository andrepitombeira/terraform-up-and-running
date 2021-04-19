provider "aws" {
  region = "eu-central-1"
  version = "~> 2.0"
}

module "alb" {
  source = "../../modules/networking/alb"
  alb_name = var.alb_name
  subnet_ids = data.aws_subnet_ids.default.ids
}