variable "aws_profile" {
  type        = string
  default     = "terraform-env" # enter name for your terraform aws profile 
}

variable "aws_region" {
  type        = string
  default     = "<enter region>" # enter name for your aws account region 
}

variable "terraform_state_bucket_on_s3" {
  type        = string
  default     = "<enter s3 bucket" # enter name of the s3 bucket where you'd want to keep your tf state file
}

provider "aws" {
   profile = terraform.workspace == "env" ? "terraform-env" : terraform.workspace == "dev" ? "terraform-dev" : var.aws_profile # this enables switching between your terraform envs/profiles. Customize to your needs. 
   region = var.aws_region
}

terraform {
  required_providers {
	 aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
