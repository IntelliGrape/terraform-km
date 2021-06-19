module "ecr" {
  source = "./modules/ecr"
  ecr_repo_name = "rishabh-repo"
  tags = {
    Owner = "rishabh"
  }
}
