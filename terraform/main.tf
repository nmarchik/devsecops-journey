terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

resource "local_file" "my_server_config" {
  content  = "server_ip: 192.168.1.1"
  filename = "server_info.txt"
}