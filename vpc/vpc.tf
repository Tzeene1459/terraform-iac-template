resource "aws_vpc" "vpc-id" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = "false"
  enable_dns_support                   = "true"
  instance_tenancy                     = "default"

  tags = {
    Name = "aws-tag-name"
  }

  tags_all = {
    Name = "aws-tag-name"
  }
}

# add more as needed