// Terraform S3 Backend for Remote State Management
terraform {
  backend "s3" {
    bucket = "bucket_name"
    key = "path/key_name.tfstate"
    region = "region_name"
    dynamodb_table = "table_name"
  }
}

// Importing VPC Module
module "vpc_module" {
  source = "./modules/vpc/"
  vpc_name = var.vpc_name
}

// Getting User Data File
data "local_file" "user_data_file" {
  filename = var.user_data_filename
}

// Getting Role Policy File
data "local_file" "policy_file" {
  filename = var.role_policy_filename
}

// Importing EC2 Module
module "ec2_module" {
  source = "./modules/ec2/"
  ami_id = var.ami_id
  sg_ingress = var.sg_ingress
  user_data = data.local_file.user_data_file.content
  ec2_role_policy = data.local_file.policy_file.content
}

// Importing RDS Module
module "rds_module" {
  source = "./modules/rds/"
  rds_allow_cidr = var.rds_allow_cidr
  db_cred = var.rds_db_cred
  engine = var.rds_engine
}

// Importing Elasticache Module
module "elasticache_module" {
  source = "./modules/elasticache/"
  port = var.cache_port
  engine = var.cache_engine
}

// Importing ECR Module
module "ecr_module" {
    source = "./modules/ecr/"
    repo_name = var.ecr_repo_name
}

