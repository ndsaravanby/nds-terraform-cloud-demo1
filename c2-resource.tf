# Resource block
resource "aws_instance" "nds-cloud-vm" {
  ami = "ami-0532be01f26a3de55"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.nds-cloud-web-sg.id]
  user_data = file("apache-install.sh")
}