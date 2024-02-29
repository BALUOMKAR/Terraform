provider "aws" {
  
}

resource "aws_instance" "dev-ec2" {
    ami = "ami-0440d3b780d96b29d"
    instance_type = "t2.micro"
    key_name = "linux"
    associate_public_ip_address = true
     tags = {
        Name = "cust-ec2"
    }
    # subnet_id = aws_subnet.dev-SN.id
    # security_groups = [ aws_security_group.dev-sg.id ]
} 