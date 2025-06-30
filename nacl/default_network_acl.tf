resource "aws_default_network_acl" "acl-id" { # replace acl id with your acl id 
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    # add more configs
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    # add more configs
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.subnet-id}"] # replace subnet id with your subnet id
}

resource "aws_default_network_acl" "acl-id" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    # add more configs
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    # add more configs
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.your-subnet-id}", "${data.terraform_remote_state.subnet.outputs.your-subnet-id}"] # you might have more than one subnets for a resource
}

# add more resources with their respective configs as needed 