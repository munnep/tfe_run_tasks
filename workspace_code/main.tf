terraform {
  cloud {
    organization = "patrickmunne"

    workspaces {
      name = "test_run_tasks"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "just_an_example"
}
