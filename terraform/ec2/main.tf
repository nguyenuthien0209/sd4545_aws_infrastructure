terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-189f843e"]
  subnet_id= "subnet-0688d3344bb77143d"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
