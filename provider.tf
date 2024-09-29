terraform {
  cloud { 
    organization = "anthony-devoperations" 
    workspaces { 
      name = "ec2-sg" 
    } 
  } 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

provider "aws" {
  region = "ca-west-1"
}
