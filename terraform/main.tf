terraform {
  required_version = " >= 1.9.8"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# S3 Bucket for Terraform state
resource "aws_s3_bucket" "cv-website" {
  bucket = "cv-websitee"

  tags = {
    Name        = "s3"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_website_configuration" "cv-website-config" {
  bucket = "cv-websitee"

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
