variable "ami_name" {
  type    = string
  default = "learn-packer-linux-aws-test"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "region" {
  type    = string
  default = "ap-southeast-2"
}

variable "ami_filters" {
  type = map(string)
  default = {
    name                = "Deep Learning AMI Neuron (Ubuntu 22.04) 20240927"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
}

variable "ami_owners" {
  type    = list(string)
  default = ["898082745236"]
}

variable "ssh_username" {
  type    = string
  default = "ubuntu"
}
