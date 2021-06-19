terraform {
  required_version = ">= 0.14.7"
}
provider "aws" {
  region = var.region
  default_tags {
    tags = var.tags
  }
}
