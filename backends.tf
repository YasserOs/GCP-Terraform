terraform {
  backend "gcs" {
    bucket  = "final-task-bucket"
  }
}
provider "google" {
  project     = "yasser-gcp"
  region      = "us-central1"
} 