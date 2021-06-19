resource "aws_ecr_repository" "sample_repo" {
name = "devops-session-sample"
image_tag_mutability = "MUTABLE"

image_scanning_configuration {
scan_on_push = true
}
}