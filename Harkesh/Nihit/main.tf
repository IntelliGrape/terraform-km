module "ecr" {
  source = "./modules"
  ecr_name = var.name
}