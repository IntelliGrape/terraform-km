variable "repo_name" {
  type    = string
  default = "stuti-repo"
}

variable "repo_tags" {
  type    = map
  default = {
    Owner = "Stuti"
  }
}
