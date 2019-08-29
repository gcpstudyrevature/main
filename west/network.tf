provider "google" {
  project = "$(PROJECT_ID)"
  region  = "us-west1"
  zone    = "us-west-b"
  credentials = "$(KEY_ID)"
}

resource "google_compute_network" "vpc" {

  name = "abc-west-vpc"
  auto_create_subnetworks = false
  routing_mode = "GLOBAL"
  
}

resource "google_compute_firewall" "allow-internal" {
  name = "${google_compute_network.vpc.name}-fw-internal"
  network = "${google_compute_network.vpc.name}"
  allow = {
    protocol = "icmp"
  }

  allow = {
    protocol = "tcp"
    ports = "22, 80, 443"
  }

  source_ranges = [
    [
    "${var.var_west_private_subnet}",
    "${var.var_east_private_subnet}",
    "${var.var_west_public_subnet}",
    "${var.var_east_public_subnet}",
    "${var.var_central_private_subnet}",
    "${var.var_central_public_subnet}"
  ]

  ]
  
  
}

