variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type = string
  default = "webservers-prod"
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the data's remote state"
  type = string
  default = "terraform-up-and-running-state-bucket-12345"
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type = string
  default = "live/prod/services/webserver-cluster/terraform.tfstate"
}