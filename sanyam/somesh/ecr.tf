resource "aws_ecr_repository" "foo" {
  name                 = "somesh-devops-km"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

}
