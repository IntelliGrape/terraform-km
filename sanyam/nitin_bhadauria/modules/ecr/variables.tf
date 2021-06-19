variable "ecr_repo_name" {
  description = "Provide ECR repo name"
  type        = string
  default     = "terraform_km_sanyam_nitin_bhadauria"
}

variable "scan_on_push" {
  description = "Scan on push"
  type        = bool
  default     = true
}

variable "image_tag_mutability" {
  description = "image_tag_mutability"
  type        = string
  default     = "MUTABLE"
}
