terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.7"
}

provider "aws" {
  profile = "kss"
  region  = "us-east-1"
}
