resource "aws_key_pair" "ssh-key" {
  key_name   = "ssh-key"
  public_key = file(var.PUBLIC_KEY_PATH)
}

resource "aws_instance" "doc-classification" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.ssh-key.key_name # references the aws_key_pair resource
  vpc_security_group_ids = ["sg-0f6eb8f8b2fe5a8ba"]
  tags = {
    Name    = "Doc-Classification Instance"
    Project = "Terraform-tutorial"
  }

  # Provisions files when creating the ec2 instance
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.USER
    private_key = file(var.PRIVATE_KEY_PATH)
    host        = self.public_ip # Use public key of the instance
  }
}

