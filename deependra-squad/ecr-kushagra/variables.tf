variable "repo_name" {
  type    = string
  default = "kushagra-repo"
}

variable "repo_tags" {
  type    = map
  default = {
    Owner = "kushagra"
  }
}