############
# ECR Repo #
############

resource "aws_ecr_repository" "app-ecr-repo" {
  name = var.app-name
}

