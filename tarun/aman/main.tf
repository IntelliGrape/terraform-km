module "ECR" {
    source = "./modules/ECR/"
    repo_name = var.ecr_repo_name
}

