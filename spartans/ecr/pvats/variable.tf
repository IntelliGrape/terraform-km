variable "name" {
  description = "Name Identifier"
  default     = "pvats"
}

variable "scan_on_push" {
  description = "Scan on Push"
  default     = false
}

variable "tags" {
  description = "tags"
  default = {
    Owner       = "spartans"
    Environment = "dev"
  }
}
