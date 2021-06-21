module "ecr" {
  source     = "./modules/"
  repo_names = var.ecr_repo_names
  tags       = local.resource_tags
}
