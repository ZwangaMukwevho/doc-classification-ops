variable "REGION" {
  default = "af-south-1"
}

variable "ZONE1" {
  default = "af-south-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    af-south-1 = "ami-0c0df7f9a9a721ef4"
  }
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "USER" {
  default = "ec2-user"
}

variable "PUBLIC_KEY_PATH" {
  description = "Path to the public SSH key file"
  type        = string
}

variable "PRIVATE_KEY_PATH" {
  description = "Path to the private SSH key file"
  type        = string
}