terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.2"
    }
  }
}
# Configuration for the AWS provider.
provider "aws" {
  region     = var.region # AWS region where resources will be provisioned.
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}