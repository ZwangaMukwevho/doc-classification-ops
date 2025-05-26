resource "aws_instance" "doc-classification" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.ZONE1
  vpc_security_group_ids = ["sg-0f6eb8f8b2fe5a8ba"]
  tags = {
    Name    = "Doc-Classification Instance"
    Project = "Terraform-tutorial"
  }
  user_data = file("${path.module}/scripts/cloudinit.yaml")
}

output "public_ip" {
  value = aws_instance.doc-classification.public_ip
}