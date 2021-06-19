output "ecr_repo_arn" {
  description = "The ARN of the ecr."
  value       = aws_ecr_repository.ecr_repo.arn
}
