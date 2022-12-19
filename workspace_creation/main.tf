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
