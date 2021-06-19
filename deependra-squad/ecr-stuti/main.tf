module "ecr" {
  source    = "./module/ecr"
  repo_name = var.repo_name
  repo_tags = var.repo_tags
}
