resource "aws_vpc" "test-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  
  tags = {
    Name = "test-vpc"
  }
}

output "id" {
  value = "${aws_vpc.test-vpc.id}"
}
