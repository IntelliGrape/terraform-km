module "ecr" {
  source = "./modules/ecr-aws"
  name = "devops-terraform-km-akansh"
  scan_on_push = "true"
}
