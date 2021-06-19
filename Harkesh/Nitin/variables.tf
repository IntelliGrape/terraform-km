variable "name" {

   description = "Name of your ECR repo"
   type = string
   default = "harkesh-nitin"


}

variable "image_tag_mutability" {
  
   type = string
   describtion = "image tag"
   default = "MUTABLE"
}

variable  "scan_on_push" {

  type        = bool
  description = "scan image either true of false"
  default     = true
}
