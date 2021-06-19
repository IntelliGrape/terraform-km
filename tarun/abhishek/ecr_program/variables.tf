variable "name" {
  type = string
}

variable "image_tag_mutability" {
  type    = string
  validation {
    condition     = var.image_tag_mutability == "MUTABLE" || var.image_tag_mutability == "IMMUTABLE"
    error_message = "Value must be MUTABLE or IMMUTABLE."
  }
}

variable "imagescan" {
  type = bool
  validation {
    condition    = var.imagescan == true || var.imagescan == false
    error_message = "Value must be true or false in bool type."
  }
}