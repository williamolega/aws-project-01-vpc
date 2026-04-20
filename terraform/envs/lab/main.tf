terraform {
    required_version = ">= 1.6"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    region  = var.region
    profile = var.aws_profile

    default_tags {
        tags = {
            Project     = "aws-lab-01-vpc"
            ManagedBy   = "terraform"
            Env         = "lab"
        }
    }
}

# Placeholder resource to exercise state and locking
# Will replace with real VPC resouce in Phase 1

resource "null_resource" "placeholder" {
    triggers = {
        note = "Remove in Phase 1 once VPC resource exists"
    }
}