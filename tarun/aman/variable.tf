// --------------------------------- //
// --- Variables for VPC Modules --- //
// --------------------------------- //

variable "vpc_name" {
    type = string
    description = "Name of VPC"
    default = "vpc1"
}

// --------------------------------- //
// --- Variables for EC2 Modules --- //
// --------------------------------- //

variable "ami_id" {
    type = string
    description = "AMI ID for Instance"
    default = "ami-0123456789"
}

variable "sg_ingress" {
    type = map(object({
        description = string
        from_port = number
        to_port = number
        protocol = string
        self = bool
        cidr_blocks = list(string)
        ipv6_cidr_blocks = list(string)
        security_groups = list(string)
    }))
    description = "SG Ingress Rule Details"
    default = {
        rule1 = {
            description = "SSH Port"
            from_port = 22
            to_port = 22
            protocol = "tcp"
            self = true
            cidr_blocks = []
            ipv6_cidr_blocks = []
            security_groups = []
        }
        rule2 = {
            description = "HTTP Port"
            from_port = 80
            to_port = 80
            protocol = "tcp"
            self = false
            cidr_blocks = ["0.0.0.0/0"]
            ipv6_cidr_blocks = []
            security_groups = []
        }
    }
}

variable "user_data_filename" {
    type = string
    description = "Users Data File Path/Name"
    default = "files/user-data.sh"
}

variable "role_policy_filename" {
    type = string
    description = "Role Policy File Path/Name"
    default = "files/iam-role-policy.json"
}

// --------------------------------- //
// --- Variables for RDS Modules --- //
// --------------------------------- //

variable "rds_allow_cidr" {
    type = list(string)
    description = "CIDR on which to allow RDS Connectivity"
    default = ["172.31.0.0/16"]
}

variable "rds_db_cred" {
    type = object({
        user = string
        pass = string
    })
    description = "RDS Database Credentials"
    sensitive = true
    default = {
        user = "master_user"
        pass = "masterdb_userpass"
    }
}

variable "rds_engine" {
    type = object({
        name = string
        version = string
    })
    description = "RDS Engine Configuration"
    default = {
        name = "mysql"
        version = "5.7.21"
    }
}

// --------------------------------- //
// Variables for Elasticache Modules //
// --------------------------------- //

variable "cache_port" {
    type = number
    description = "Elasticache Port"
    default = 11211
}

variable "cache_engine" {
    type = object({
        name = string
        version = string
    })
    description = "Elasticache Engine Details"
    default = {
        name = "memcached"
        version = "1.6.6"
    }
}

// --------------------------------- //
// --- Variables for ECR Modules --- //
// --------------------------------- //

variable "ecr_repo_name" {
    type = string
    description = "ECR Repository Name"
    default = "ecrrepo"
}
