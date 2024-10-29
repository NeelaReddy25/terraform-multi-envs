variable "instance_names" {
  type = map
#   default = {
#     db-dev = "t3.small"
#     backend-dev = "t3.micro"
#     frontend-dev = "t3.micro"
#   }
}

variable "environment" {
  #default = "dev"
}
variable "common_tags" {
  type = map
  default = {
    Project = "expense"
    Terraform = "true"
  }
}

variable "domain_name" {
  default = "neelareddy.store"
}

variable "zone_id" {
  default = "Z03951783QAH4RNZ7CEK8"
}