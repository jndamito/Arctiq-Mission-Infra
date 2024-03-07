terraform {
  backend "s3" {
    bucket = "new-arctiq-489"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}