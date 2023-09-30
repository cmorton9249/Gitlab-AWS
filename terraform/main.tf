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
  region     = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}


resource "aws_s3_bucket" "example" {
  bucket = "morton_personal_test_bucket_1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
