provider "google" {
  project = "abc-vehicles"
  region  = "us-west1"
  zone    = "us-west1-b"
  credentials = "$(KEY_ID)"
}

module "network" {
  source = "./modules/network.tf"
  
}

module "compute" {
  source = "./modules/compute.tf"
  
}

module "storage" {
  source = "./modules/storage.tf"
  
}

module "functions" {
    source = "./modules/functions.tf"

}




