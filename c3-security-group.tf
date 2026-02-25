# Resource block security group

resource "aws_security_group" "nds-cloud-web-sg" {
  description = "nds-cloud-web-sg"
  name = "nds-cloud-web-sg"
  ingress {

    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    
}
}