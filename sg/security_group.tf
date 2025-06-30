# you can either specify the details of your actual sg resources like so:

resource "aws_security_group" "sg-resource-id" {
  description = "For eg: Notebook Instance Security Group"

  egress {
    cidr_blocks = ["0.0.0.0/0"] # specify egress block 
    from_port   = "0"   # sample value
    protocol    = "-1"  # sample value
    self        = "false" # sample value
    to_port     = "0" # sample value
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"] # specify ingress block
    from_port   = "443"   # sample value
    protocol    = "tcp" # sample value
    self        = "false" # sample value
    to_port     = "443" # sample value
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"] # specify additional ingress or egress blocks 
    from_port   = "5432"  # sample value
    protocol    = "tcp" # sample value
    self        = "false" # sample value
    to_port     = "5432"  # sample value
  }

  name   = "Add-Name-For-SG-Resource"
  vpc_id = "vpc-id"
}


# or you can use variables to specify sg resources dynamically

resource "aws_security_group" "this" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  dynamic "egress" {
    for_each = var.egress_rules
    content {
      cidr_blocks = egress.value.cidr_blocks
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      self        = egress.value.self
    }
  }

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      cidr_blocks = ingress.value.cidr_blocks
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      self        = ingress.value.self
    }
  }
}

# add more resources as needed 
