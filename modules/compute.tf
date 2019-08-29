 resource "google_compute_instance" "default" {
   name         = "my-vm"
   machine_type = "n1-standard-1"
   zone         = "us-east1-b"
   boot_disk {
     initialize_params {
       image = "windows-server-2008-r2-dc-v20190813"
     }
   }
   network_interface {
     network = "default"
     access_config {
       // Ephemeral IP
     }
   }
 }