module "ecr" {
  source = "../"
  name = "km-demo-abhishek"
  image_tag_mutability = "MUTABLE"
  imagescan = true
}