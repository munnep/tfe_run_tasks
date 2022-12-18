terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.40.0"
    }
  }
}

provider "tfe" {
  # Configuration options
}

resource "tfe_workspace" "test" {
  name         = "test_run_tasks"
  organization = "patrickmunne"
  tag_names    = ["test", "app"]
}

resource "tfe_organization_run_task" "example" {
  organization =  "patrickmunne"
  url          = "https://639f16f47aaf11ceb89234ae.mockapi.io/api/v1/test"
  name         = "task-name"
  enabled      = true
  description  = "An example task"
}