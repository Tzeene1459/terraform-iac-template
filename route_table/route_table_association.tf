resource "aws_route_table_association" "subnet-id" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.rtb-id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.subnet-id}"
}

resource "aws_route_table_association" "subnet-id" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.rtb-id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.subnet-id}"
}

# replace values above 
# add more as needed 