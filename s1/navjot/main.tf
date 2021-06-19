resource "aws_s3_bucket" "km-terraform-navjot" {
  bucket = "km-terraform-navjot"
  acl    = "private"

  tags = {
    Name        = "Navjot"
    Environment = "KM"
  }
}
