resource "aws_internet_gateway" "igw-id" { #replace igw-id with your id 
  tags = {
    Name = "<your-igw-name>"
  }

  tags_all = {
    Name = "<your-igw-name>"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.your-vpc-id}" # replace your-vpc-id with the id of your connected vpc
}

# add more resources as necessary with their id, tags (if any) and vpc ids 
