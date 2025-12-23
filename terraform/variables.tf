variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "instance_type" {
  default = "t2.micro"
}
