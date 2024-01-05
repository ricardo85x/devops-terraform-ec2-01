resource "aws_instance" "env-prod" {
  count = 3
  ami           = "ami-0c7217cdde317cfec" // Ubunto Server 22.04 LTS
  instance_type = "t2.micro"
  key_name = "terraform"

  security_groups = [
    "allow_ssh", 
    "allow_http", 
    "allow_egress",
  ]

  user_data = file("ec2_script.sh")

  tags = {
    Name = "env-prod-${count.index}"
  }
}