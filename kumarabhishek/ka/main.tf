module "ECR" {
  source        = "./modules/ECR/"
  ecr_repo_name = var.ecr_repo_name
}
