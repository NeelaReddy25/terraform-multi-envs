terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.62.0"
    }
  }
}

#providers authentication here
provider "aws" {
  region ="us-east-1"
}