resource "aws_main_route_table_association" "vpc-id" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.rtb-id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.vpc-id}"
}

resource "aws_main_route_table_association" "vpc-id" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.rtb-id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.vpc-id}"
}

# add more as needed 