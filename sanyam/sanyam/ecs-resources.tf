############
# ECR Repo #
############

resource "aws_ecr_repository" "app-ecr-repo" {
  name = var.app-name

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

