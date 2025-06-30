resource "aws_redshift_subnet_group" "<id>" {
  description = "<description>"
  name        = "<default>"
  subnet_ids  = [
      "${data.terraform_remote_state.subnet.outputs.subneta-id}",
      "${data.terraform_remote_state.subnet.outputs.subnetb-id}",
  ]}