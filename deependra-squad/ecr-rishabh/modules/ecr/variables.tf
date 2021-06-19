variable "ecr_repo_name" {
  type = string
  default = "rishabh-repo"
}
variable "tags" {
  type = map
  default = {
    Owner = "rishabh"
  }
}
