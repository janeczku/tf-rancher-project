terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = "1.21.0"
    }
  }
  required_version = ">= 1.0.0"
}