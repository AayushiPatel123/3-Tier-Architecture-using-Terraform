resource "aws_vpc" "my_vpc1" {
    cidr_block = vpc.vpc_cidr
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = {
        Name = "central_network"
    }  
}