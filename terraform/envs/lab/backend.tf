terraform {
    backend "s3" {
        bucket          = "tfstate-aws-lab-a3ad9cf5"
        key             = "envs/lab/terraform.tfstate"
        region          = "us-east-1"
        profile         = "aws-lab"
        encrypt         = true
        use_lockfile    = true
    }
}