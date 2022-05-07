resource "google_compute_network" "vpc_network" {
  project                 = "yasser-gcp"
  name                    = "final-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}