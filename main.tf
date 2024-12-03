provider "aws" {
  region = "us-west-2"
}
terraform {
  backend "s3" {
    bucket         = jenkins-state-sam   
    key            = "terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}
resource "aws_s3_bucket" "example" {
bucket = "jenkins-test-bucket-sam"
acl    = "private"
}
