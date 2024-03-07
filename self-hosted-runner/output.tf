output "runner-ip" {
  value = aws_instance.arctiq_instance.public_ip
}

data "terraform_remote_state" "arctiqvpc" {
  backend = "s3"
  config = {
    bucket = "new-arctiq-489"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}