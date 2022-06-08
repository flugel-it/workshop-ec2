variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami" {
  type = map(any)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "tags" {
  type = map(any)
  default = {
    Name = "HelloWorld"
  }
}
