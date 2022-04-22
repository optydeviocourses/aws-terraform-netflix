terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"

  cloud {
    organization = "carlosrobertodevops"

    workspaces {
      name = "aws-terraform-youtube"
    }
  }
}

provider "aws" {
  profile = "aws-terraform-netflix"
  region  = "${var.region}"
}

