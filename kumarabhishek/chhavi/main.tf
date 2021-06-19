module "ECR" {
        source = "./modules/ecr/"
        ecr_repo_name = var.ecr_repo_name

}

