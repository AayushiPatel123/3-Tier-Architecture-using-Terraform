resource "aws_security_group" "alb_security_group" {
    name = "ALB security group"
    description = "Enable https/https access on port 80/443"
    vpc_id = aws_vpc.my_vpc1.id

 ingress {
    description = "http access"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
 }

 ingress {
    description = "http access"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
 }

 egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
 }

 tags = {
    Name = "ALB securityb groups"   
 }

}


