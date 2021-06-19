resource "aws_ecr_repository" "km" {
name = "subhi-km-ecr"
image_tag_mutability = "MUTABLE"
image_scanning_configuration {
scan_on_push = true
}
}
