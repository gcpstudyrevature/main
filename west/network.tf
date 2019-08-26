provider "google" {
  project = "$(PROJECT_ID)"
  region  = "us-west1"
  zone    = "us-west-b"
  credentials = "C:/revature/gcpcase/west/terracred.json"
}

resource "google_compute_network" "vpc-west" {

  name = "abc-west-vpc"
  auto_create_subnetworks = false
  routing_mode = "GLOBAL"
  
}
