terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-politess"
    key            = "test"
    region         = "us-east-1"
  }
}

