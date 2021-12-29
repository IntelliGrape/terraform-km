# resource "aws_ecr_repository" "km_shivansh_ecr_repo" {

#   name                 = "km_shivansh_ecr_repo"
#   image_tag_mutability = "MUTABLE"

#   image_scanning_configuration {
#     scan_on_push = false
#   }
# }

module "km_shivansh_ecr_repo" {
  source          = "./modules/ecr"
  name            = "km_shivansh_ecr_repo"
  image_tag_mutability = "${local.variables[terraform.workspace].ecr.image_tag_mutability}"
  scan_on_push = "${local.variables[terraform.workspace].ecr.scan_on_push}"
}
