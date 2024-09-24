resource "aws_internet_gateway" "my_igw" {  
    vpc_id = aws_vpc.my_vpc1.id

    tags = {
        Name = "Test IGW"
    }
  
}