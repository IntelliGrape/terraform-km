output "ecr_repo" {
  description = "ECR Repo Name"
  value       = aws_ecr_repository.ecr1.name
}
