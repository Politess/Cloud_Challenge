terraform {
    backend "s3" {
        bucket                  = "terraform-state-bucket-politess"
        key                     = "website/terraform.tfstate"
        region                  = "us-east-1"
        dynamodb_table          = "terraform_state_locks"
    }
}

