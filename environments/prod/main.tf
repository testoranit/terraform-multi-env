provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "30.0.0.0/16"
  name       = "prod-vpc"
}

module "ec2" {
  source        = "../../modules/ec2"
  ami           = "ami-084568db4383264d4" # Example AMI ID
  instance_type = "t2.micro"
  subnet_id     = "subnet-0b34cb45430e1826b"      # Replace with actual subnet ID
  name          = "prod-ec2"
}
