packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "learn-packer-linux-aws-ubuntutest"
  instance_type = "t2.micro"
  region        = "ap-southeast-2"
  source_ami_filter {
    filters = {
      name                = "Deep Learning AMI Neuron (Ubuntu 22.04) 20240927"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["898082745236"]
  }
  ssh_username = "ubuntu"
}
build {
  name = "learn-packer"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
}

