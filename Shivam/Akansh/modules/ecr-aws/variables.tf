variable "name" {
  type        = string
  description = "Name of the repo"
}

variable "scan_on_push" {
  default     = false
  type        = bool
  description = "Scaning of image to allow or not while push"
}

variable "image_tag_mutability" {
  default     = "MUTABLE"
  type        = string
  description = "Allow tags overwrite"
}
