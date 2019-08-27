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
  
  
}

