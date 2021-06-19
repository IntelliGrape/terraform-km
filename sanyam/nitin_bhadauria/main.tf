# ECR will be created
module "ecr" {
  source  = "./modules/ecr"
  scan_on_push = true
}
