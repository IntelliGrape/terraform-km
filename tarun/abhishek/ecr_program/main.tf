resource "aws_ecr_repository" "demo" {
  name                 = "km-demo-abhishek"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}