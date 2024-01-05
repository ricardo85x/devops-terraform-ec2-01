resource "aws_instance" "env-prod" {
  ami           = "ami-0c7217cdde317cfec" // Ubunto Server 22.04 LTS
  instance_type = "t2.micro"
  key_name = "terraform"

  tags = {
    Name = "env-prod"
  }
}