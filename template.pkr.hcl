source "vagrant" "aisi" {
  communicator = "XXX"
  source_path  = "XXX"
  box_version  = "XXX"
  provider     = "XXX"
  add_force    = true
  skip_add     = false
  template     = "provisioning/Vagrantfile.template"
}

build {
  sources = ["source.vagrant.aisi"]

  provisioner "XXX" {
    script  = "XXX"
    timeout = "XXX"
  }
}
