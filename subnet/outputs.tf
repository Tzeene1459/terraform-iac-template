output "subnet_a_id" { #replace value with subnet id
  value = "${aws_subnet_a.id}" #replace with the subnet id 
  description = "The ID of the subnet a"
}

output "subnet_b_id" { #replace value with subnet id
  value = "${aws_subnet_b.id}" #replace with the subnet id 
  description = "The ID of the subnet b"
}

# Add more as many as subnets needed or already created in the environment. 
# After running terraform apply, the output values defined in outputs.tf will be displayed in the terminal and stored in terraform.tfstate.
