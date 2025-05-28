resource "aws_instance" "doc-classification" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.ZONE1
    vpc_security_group_ids = ["sg-092a4820681cdf597"]
  tags = {
    Name    = "Doc-Classification Instance"
    Project = "Terraform-tutorial"
  }
  user_data = file("${path.module}/scripts/cloudinit.yaml")
}

output "public_ip" {
  value = aws_instance.doc-classification.public_ip
}