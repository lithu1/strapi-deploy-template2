resource "aws_instance" "strapi" {
  ami           = "ami-0c2b8ca1dad447f8a"  # Ubuntu 22.04 LTS (change if needed)
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "StrapiEC2"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install docker.io -y
              sudo systemctl start docker
              sudo systemctl enable docker
              docker pull ${var.docker_image}
              docker run -d -p 80:1337 ${var.docker_image}
              EOF
}
