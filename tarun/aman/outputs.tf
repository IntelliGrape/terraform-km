output "Instance_Public_DNS" {
    value = module.ec2_module.instance_public_dns
}

output "Instance_Private_DNS" {
    value = module.ec2_module.instance_private_dns
}

output "rds_host" {
    value = module.rds_module.db_host
}

output "elasticache_cluster_address" {
    value = module.elasticache_module.cache_cluster_address
}

output "ECR_ARN"{
    value = module.ecr_module.ARN
}

