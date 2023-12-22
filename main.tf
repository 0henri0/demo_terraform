resource "aws_instance" "app_server" {
 count = 2
 ami = "ami-02453f5468b897e31xxxxx"
 instance_type = "t2.micro"
}

provider "aws" {
 region = "ap-southeast-1"
}


terraform {
  cloud {
    organization = "0henri0"

    workspaces {
      name = "demo_terraform"
    }
  }
}