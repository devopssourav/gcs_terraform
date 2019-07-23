variable "cred" { }
variable "project" { }
variable "region" { }

provider "google" {
  credentials  = "${file("${var.cred}")}"
  project      = "${var.project}"
  region       = "${var.region}"
}

resource "google_storage_bucket" "MULTI_REGIONAL" {
  name     = "sourav_multi-regional"
  storage_class = "MULTI_REGIONAL"
  location = "US"
}

resource "google_storage_bucket" "REGIONAL" {
  name     = "sourav_regional"
  storage_class = "REGIONAL"
  location = "us-central1"
}

resource "google_storage_bucket" "NEARLINE" {
  name     = "sourav_nearline"
  storage_class = "NEARLINE"
  location = "us-central1"
}

resource "google_storage_bucket" "COLDLINE" {
  name     = "sourav_coldline"
  storage_class = "COLDLINE"
  location = "us-central1"
}
