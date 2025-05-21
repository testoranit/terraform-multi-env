terraform {
  backend "s3" {
    bucket = "my-terraform-state-qa"
    key    = "qa/terraform.tfstate"
    region = "us-east-1"
  }
}
