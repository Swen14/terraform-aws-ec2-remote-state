terraform {
  backend "s3" {
    bucket         = "swen-terraform-232066"
    key            = "ec2-infrastructure/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-table"
    encrypt        = true
  }
}
