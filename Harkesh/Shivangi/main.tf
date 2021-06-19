resource "aws_ecr_repository" "foo" {
  name                 = "terraform-km-harikesh-squad-shivangi"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
