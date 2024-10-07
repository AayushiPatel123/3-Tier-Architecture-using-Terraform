resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.my_vpc1.id

    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_igw.id
    }

    tags = {
        Name ="Public route table"
    }
  
}


#############Route Table Association#################

resource "aws_route_table_association" "public_subnet1_route_table_association" {
    subnet_id = aws_subnet.public-web-subnet-1.id
    route_table_id = aws_route_table.public_route_table.id
  
}