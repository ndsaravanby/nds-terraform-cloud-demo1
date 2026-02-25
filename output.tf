# Output block

output "aws_public_ip" {
  description = "ec2-public-ip"
  value = aws_instance.nds-cloud-vm.public_ip
}

output "aws_public_dns" {
  description = "dnsinfo"
  value = aws_instance.nds-cloud-vm.public_dns
}