terraform {
  backend "s3" {
    bucket = "sergio-terraform-state"
    key    = "app/vpc"
    region = "us-east-1"
    dynamodb_table = "sergio-terraform-state" # Partition key
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  
  
  tags = {
    Name = "mojix-vpc"
  }
}