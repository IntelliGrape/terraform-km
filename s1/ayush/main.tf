module "ecr" {
    source = "./module/ecr"
    ecr_name = "terraform-s1-ayush-tripathi"
    tag_name = "MUTABLE"
}
