terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.23.1"
    }
  }
}


provider "aws" {
    #configuration options
    region = "us-east-1"
  
}