resource "google_compute_instance" "gke-bastion"{
  name         = "gke-cluster-bastion"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.management.id
  }
  
  service_account {
    email  = google_service_account.cluster_admin.email
    scopes = ["cloud-platform"]
  }

}