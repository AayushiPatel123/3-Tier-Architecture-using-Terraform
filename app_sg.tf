###########security group for Application Tier################

resource "aws_security_group" "ssh-security-group" {
    name = "SSH Access"
    description = "enable ssh access on port 22"
    vpc_id = aws_vpc.my_vpc1.id
  ingress {
    description = "ssh access"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["${var.ssh-locate}"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

   tags = {
    Name = "ssh security group"
   } 
}
