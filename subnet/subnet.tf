# In this file, define the AWS subnet resources that belong to a VPC. It typically needs to includes:

# - AWS Subnet Resource Definitions
# - Subnet Resource Configurations
# - References to the VPC and Availability Zones
# - Tags for Identification


resource "aws_subnet" "private_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.availability_zone

  assign_ipv6_address_on_creation                = false
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "${var.environment}-private-subnet"
  }

  tags_all = {
    Name = "${var.environment}-private-subnet"
  }
}

# add more as needed 