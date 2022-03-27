terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

# Define the AWS provider
provider "aws" {
  profile = var.aws_proflie
  region  = var.aws_region
}
