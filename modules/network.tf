
resource "google_compute_network" "vpc-west" {
  name = "abc-west-vpc"
  auto_create_subnetworks = false
  routing_mode = "GLOBAL"
  
}

 data "google_compute_subnetwork" "vpc-west" {
  name   = "west-private"
  region = "us-west1"
}

 data "google_compute_subnetwork" "vpc-west" {
  name   = "west-public"
  region = "us-west1"
}



resource "google_compute_firewall" "allow-internal" {
  name = "${google_compute_network.vpc-west.name}-fw-internal"
  network = "${google_compute_network.vpc-west.name}"
  allow = {
    protocol = "icmp"
  
    protocol = "tcp"
    ports = "22, 80, 443"
  }

  source_ranges = [
    [
      
    
  ]

  ]
  
}


