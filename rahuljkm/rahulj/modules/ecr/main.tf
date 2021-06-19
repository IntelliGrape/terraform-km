resource "aws_ecr_repository" "ecr_repo" {
  name                 = var.reponame
  image_tag_mutability = var.imagetag 
  image_scanning_configuration {
    scan_on_push = true
  }
}

