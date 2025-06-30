data "terraform_remote_state" "sg" {
  backend = "s3"

  config = {
    region = var.aws_region
    bucket = var.terraform_state_bucket_on_s3 # replace with tf state bucket name 
    key = "path-to/sg/in-tf-state-bucket" # replace key 
  }
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "sg_description" {
  description = "Description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}

variable "egress_rules" {
  description = "List of egress rules"
  type = list(object({
    cidr_blocks = list(string)
    from_port   = number
    to_port     = number
    protocol    = string
    self        = bool
  }))
}

variable "ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    cidr_blocks = list(string)
    from_port   = number
    to_port     = number
    protocol    = string
    self        = bool
  }))
}
