variable "name" {
  type        = string
  description = "Repo Name"
}
variable "image_tag_mutability" {
  type        = string
  description = ""
}
variable "scan_on_push" {
  default     = false
  type        = bool
  description = ""
}

