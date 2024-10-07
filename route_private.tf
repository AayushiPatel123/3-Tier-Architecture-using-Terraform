resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.vpc_01.id


    route{
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat1.id
    }

    tags = {
      Name= "Private Route Table"
    }
}


#############Route Association for App Tier################

resource "aws_route_table_association" "nat_route_1" {
    subnet_id = aws_subnet.private-app-subnet-1.id
    route_table_id = aws_route_table.private_route_table.id  
}

resource "aws_route_table_association" "nat_route_2" {
    subnet_id = aws_subnet.private-app-subnet-2.id
    route_table_id = aws_route_table.private_route_table.id
}


#############Route Association for Database Tier################

resource "aws_route_table_association" "nat_route_db1" {
    subnet_id = aws_subnet.private-db-subnet-1.id
    route_table_id = aws_route_table.private_route_table.id  
}

resource "aws_route_table_association" "nat_route_db2" {
    subnet_id = aws_subnet.private-db-subnet-2.id
    route_table_id = aws_route_table.private_route_table.id
}