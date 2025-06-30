output "vpc_id" {
  value = aws_vpc.main.id
  description = "The ID of the VPC"
}

# After running terraform apply, the output values defined in outputs.tf will be displayed in the terminal and stored in terraform.tfstate.