terraform {
    backend "s3" {
        bucket = "terraform-state-lab10"
        key = "workspace/ecr/ecr"
        region = "us-east-1"
    }
}

resource "aws_ecr_repository" "ecr" {
  name = "terraform-ecr-aws"
}