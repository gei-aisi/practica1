packer {
  required_plugins {
    vagrant    = { version = ">= 1.1.6", source = "github.com/hashicorp/vagrant" }
  }
}

source "vagrant" "aisi" {
  communicator = "XXX"
  ssh_timeout  = "10m"
  ssh_read_write_timeout = "2m"
  source_path  = "XXX"
  box_version  = "XXX"
  provider     = "XXX"
  insert_key   = false
  template     = "provisioning/Vagrantfile.template"
  add_force    = true
  skip_add     = false
}

build {
  sources = ["source.vagrant.aisi"]

  provisioner "XXX" {
    script  = "XXX"
    timeout = "XXX"
  }
}
