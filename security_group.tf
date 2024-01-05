resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH (22) inbound traffic"

  ingress { // external access
    description      = "SSH from VPC" // ssh from security group
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] // allow from any IP
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP (80) inbound traffic"

  ingress { // external access
    description      = "HTTP from VPC" // http from security group
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] // allow from any IP
  }

  tags = {
    Name = "allow_http"
  }
}


resource "aws_security_group" "allow_egress" { // from instance to world
  name        = "allow_egress"
  description = "Allow EGRESS"

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_egress"
  }
}