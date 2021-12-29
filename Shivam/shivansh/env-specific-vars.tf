locals {
    variables = {
        km = {
            ecr = {
                image_tag_mutability= "MUTABLE"
                scan_on_push = false
            }
        }
    }
}

