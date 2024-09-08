terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.2"
    }
  }
  backend "s3" {
    bucket         = "falconbirds3bucket"      # Name of the S3 bucket where the state will be stored.
    key            = "App10/terraform.tfstate" # Path within the bucket where the state will be read/written.
    region         = "eu-north-1"              # AWS region of the S3 bucket.
    encrypt        = true                      # Ensures the state is encrypted at rest in S3.
    dynamodb_table = "terraform-lock"          # DynamoDB table used for state locking.
  }
}