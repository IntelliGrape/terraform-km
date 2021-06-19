variable "name" {
  description = "ECR repo name"
  default = "terraform-km-bhanu"
}
variable "scan_status" {
  description = "Scan on Push"
  default     = true
}


variable "region" {
  description = "AWS Region in which you are working"
  default     = "us-east-1"
}