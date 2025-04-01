provider "aws" {
  region = "eu-west-3"
}

terraform {
  backend "s3" {
    bucket  = "bucket-terraform-7854135487451568"
    key     = "terraform/state.tfstate"
    region  = "eu-west-3"
    encrypt = true
  }
}