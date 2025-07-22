variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "strapi-key" # This must match your EC2 key pair
}

variable "docker_image" {}
