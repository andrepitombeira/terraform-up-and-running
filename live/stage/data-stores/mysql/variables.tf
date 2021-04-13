variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  type = string
  default = "terraform-up-and-running-state-bucket-12345"
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type = string
  default = "live/stage/services/webserver-cluster/terraform.tfstate"
}

variable "cluster_name" {
  description = "The name to use to namespace all the resources in the cluster"
  type = string
  default = "webservers-stage"
}