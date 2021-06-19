output "app-ecr-repo" {
  value       = "${aws_ecr_repository.app-ecr-repo}"
  description = "Created ECR Repo."
}
