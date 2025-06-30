# put your igw id in place of the "igw-id" part 

output "aws_internet_gateway_igw-id" { 
  value = "${aws_internet_gateway.igw-id.id}"
}

