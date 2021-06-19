variable "reponame" {
  description = "ecr repo name"
  type = string
  default = "terraform-km-rahul"
}
variable "imagetag" { 
  description = "set image tag mutability"
  type = string
  default = "MUTABLE"
}
