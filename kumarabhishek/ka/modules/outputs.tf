output "repository_url" {
  description = "Full ARN of the repository"
  value       = zipmap(var.repo_names, aws_ecr_repository.testingkumar.*.repository_url)
}
