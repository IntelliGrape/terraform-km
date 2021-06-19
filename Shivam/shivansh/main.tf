
resource "aws_ecr_repository" "km_shivansh_ecr_repo" {
  name                 = "km_shivansh_ecr_repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}
