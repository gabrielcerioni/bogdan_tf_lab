terraform {
  required_version = "0.14.9"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.61.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.61.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.3"
    }
  }
}
