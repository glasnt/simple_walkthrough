terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  project = var.project
}

resource "google_storage_bucket" "media" {
  name     = "${var.project}-media"
  location = "us-central1"
  storage_class = "REGIONAL"
}