output "ecr_repo_url" {
  value       = aws_ecr_repository.this.repository_url
  description = "The repository URL"
}

output "ecr_repo_arn" {
  value       = aws_ecr_repository.this.arn
  description = "The repository ARN"
}

