output "ecr_name" {
  description = "add ECR output"
  value       = aws_ecr_repository.ecr_repo.name
}