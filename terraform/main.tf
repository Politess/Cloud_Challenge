terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "backend" {
  source        = "./modules/remote_backend"
  iam_user_name = "cloudchallenge"
  bucket_name   = "bucket_test"
  table_name    = "table_test"
}