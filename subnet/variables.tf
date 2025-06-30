data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.terraform_state_bucket_on_s3
    key = "path/to/subnetstatefile/in/terraformbucket"
  }
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "AWS availability zone"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod, staging)"
  type        = string
}
