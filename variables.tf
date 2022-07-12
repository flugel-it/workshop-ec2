variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "AMIS for different regions."
  type        = map(any)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "instance_type" {
  description = "The instance type to use for the instance."
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(any)
  default = {
    Name = "HelloWorld"
  }
}

variable "key_name" {
  type = string
  default = "admin"
}