resource "aws_ecr_repository" "harkesh_nitin" {
  name                 = "harkesh_nitin"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

