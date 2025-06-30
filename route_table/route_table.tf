resource "aws_route_table" "rtb-id" {
  route {
    cidr_block = "0.0.0.0/0" 
    gateway_id = "igw-id"
  }

  tags = {
    Name = "tag-name"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.vpc-id}"
}

resource "aws_route_table" "rtb-id" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-id"
  }

  tags = {
    Name = "tag-name"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.vpc-id}"
}


# replace values above with actual ids 
# add more as needed