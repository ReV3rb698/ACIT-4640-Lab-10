variable "project_name" {
  type = string
  default = "web-server"
}

variable "ami" {
  type = string
  description = "AMI for the web server instance"
  validation {
    condition = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "Please provide a valid value for AMI varible"

 }
}

variable "instance_type" {
  type = string
  description = "Instance type for web server EC2 instance"
  default = "t2.micro"
  sensitive = true
}

variable "key_name" {
  type = string
  description = "Name for the ssh key file"
}

variable "vpc_security_group_ids" {
  type = list(string)
  description = "A list of security group ids"
}

variable "subnet_id" {
  type = string
  description = "The subnet id of the network group"
}

